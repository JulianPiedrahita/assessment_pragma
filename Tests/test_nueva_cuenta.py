import unittest

from core.cuenta import Cuenta

class TestNuevaCuenta(unittest.TestCase):

    def test_nueva_cuenta(self):
        cuenta = Cuenta()
        self.assertEqual(cuenta.saldo, 0)

if __name__ == '__main__':
    unittest.main()