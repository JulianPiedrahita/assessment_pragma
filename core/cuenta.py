class Cuenta:
    saldo = 0

    def ingresar_dinero(self, cantidad):
        self.saldo += cantidad

    def salida_dinero(self, cantidad):
        self.saldo -= cantidad

    def verificacion_salida_dinero(self, cantidad):
        if self.saldo <= cantidad:
            self.salida_dinero(cantidad)
        else:
            print("la cantidad solicitada excede la cantidad en cuenta")
