#!/bin/bash
#revisar porque no se setea esta variable pilas
IDAPIGATEWAY="$1" #variable a remplazar en pipeline #
DATA=$(base64 -w 0 api.yaml)
API_NAME='CCB AWS General Information API' #variable a remplazar en pipeline
API_TYPE=EDGE
REGION=us-east-1 #variable a repmplazar en pipeline

if aws apigateway get-rest-api --rest-api-id "$IDAPIGATEWAY"  >/dev/null 2>&1; then
  echo "la api ya existe"
  aws apigateway put-rest-api --rest-api-id "$IDAPIGATEWAY" --mode merge --body "$DATA"
  echo "update api"
  aws apigateway update-stage --rest-api-id "$IDAPIGATEWAY" --stage-name "QA" --patch-operations 'op=replace,path=/*/*/metrics/enabled,value=true'
  echo "update api logs"
  aws apigateway update-deployment --rest-api-id "$IDAPIGATEWAY"  --deployment-id "rmz1kb1cqi" --patch-operations 'op=replace,path=/tracingEnabled,value=true' 'op=replace,path=/logging/loglevel,value=INFO' 'op=replace,path=/logging/dataTrace,value=true' 'op=replace,path=/accessLogSettings/format,value=json-with-response-parameters'
  echo "update api 2"

else
  echo "LA API NO EXISTE"
  aws apigateway import-rest-api --region 'us-east-1' --fail-on-warnings --body "$DATA" 

  API=$(aws apigateway get-rest-apis --query "items[?name=='$API_NAME' && endpointConfiguration.types[0]=='$API_TYPE']" --output json --region "$REGION")

	if [ "${#API}" -eq 2 ]; then
  	echo "No se encontró la API con nombre $API_NAME y tipo $API_TYPE en la región $REGION"
  	exit 1
	else
  	API_ID=$(echo "$API" | jq -r '.[].id')
  	echo "La API con nombre $API_NAME y tipo $API_TYPE tiene el ID $API_ID"
	aws apigateway update-rest-api --rest-api-id "$API_ID" --patch-operations "op=replace,path=/endpointConfiguration/types/EDGE,value='REGIONAL'"
 	fi

fi

#'op=replace,path=/accessLogSettings/destinationArn,value=arn:aws:logs:us-east-1:632357775273:log-group:ccb_yappy_logs' consultar esta linea  