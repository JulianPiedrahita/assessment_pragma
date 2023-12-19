#!/bin/bash
# Archivo YAML
yaml_file="api.yaml"

# Utiliza awk para extraer el valor entre comillas para la etiqueta 'title'
title=$(awk -F': ' '/title: "/{print $2}' "$yaml_file")

# Elimina las comillas del valor
title="${title%\"}"
title="${title#\"}"

echo "$title"