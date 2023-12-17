import unittest

from core.cuenta import Cuenta

class TestSalidaCuenta(unittest.TestCase):

    def test_cuando_se_hace_una_salida_el_saldo_disminuye(self):
        #Caso cuenta que ya tiena saldo
        cuenta = Cuenta()
        # preparar
        cuenta.saldo = 1000
        #actuar
        cuenta.salida_dinero(200)
        #comprobar
        self.assertEqual(cuenta.saldo, 800)

    def test_cuando_se_hace_una_salida_mayor_al_saldo_en_cuenta(self):
        #Caso cuenta que ya tiena saldo
        cuenta = Cuenta()
        # preparar
        cuenta.saldo = 1000
        #actuar
        cuenta.salida_dinero(1200)
        #comprobar
        self.assertEqual(cuenta.saldo, -200)

if __name__ == '__main__':
    unittest.main()