import unittest

from core.cuenta import Cuenta

class TestIngresoCuenta(unittest.TestCase):

    def test_cuando_se_hace_un_ingreso_el_saldo_aumenta(self):
        #Caso cuenta recien creada
        cuenta = Cuenta()
        cuenta.ingresar_dinero(200)
        self.assertEqual(cuenta.saldo, 200)


if __name__ == '__main__':
    unittest.main()