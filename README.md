# assessment_pragma

Especificaciones del desarrollo:

1. Al crear una nueva cuenta, el saldo  de esta es igual a 0
2. cuando hacemos un ingreso, el saldo de esta cuenta pasa a ser el valor del saldo inicial mas el dinero ingresado
3. cuando retiremos dinero, el saldo de la cuenta pasa a ser el valor del saldo inicial menos el dinero ingresado
4. si intentamos retirar mas dinero del que tenemos  en la cuenta, saltara una excepcion.


Comando a utilizar:

1.Instalacion de los paquetes a utilizar en el desarrollo =>
  pip install -r requirements.txt

2.Verificacion de los paquetes instalados =>
  pip freeze

Ejecucion de pruebas:

1. python -m unittest tests/test_nueva_cuenta.py
2. python -m unittest tests/test_ingreso_cuenta.py
3. python -m unittest tests/test_salida_cuenta.py      
