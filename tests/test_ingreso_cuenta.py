import unittest

from core.cuenta import Cuenta

class TestIngresoCuenta(unittest.TestCase):


    def test_cuando_se_hace_un_ingreso_en_una_cuenta_nueva_el_saldo_sera_igual_al_dinero_ingresado(self):
        #Caso cuenta recien creada
        cuenta = Cuenta()
        cuenta.ingresar_dinero(200)
        self.assertEqual(cuenta.saldo, 200)

    def test_cuando_se_hace_un_ingreso_el_saldo_aumenta(self):
        #Caso cuenta que ya tiena saldo
        cuenta = Cuenta()
        # preparar
        cuenta.saldo = 1000
        #actuar
        cuenta.ingresar_dinero(200)
        #comprobar
        self.assertEqual(cuenta.saldo, 1200)





if __name__ == '__main__':
    unittest.main()