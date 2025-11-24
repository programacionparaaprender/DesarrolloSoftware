#7. Clase CuentaBancaria – Operaciones Básicas
# Crea una clase `CuentaBancaria` con: `nombre del titular y saldo`.
# Agrega dos métodos:
# - Uno para **depositar** dinero (suma al saldo actual).
# - Otro para **retirar** dinero (resta del saldo actual).
# 📌 **Fórmulas:**
# Nuevo saldo (al depositar) = saldo actual + monto
# Nuevo saldo (al retirar) = saldo actual - monto

class CuentaBancaria:
    def __init__(self, nombre_titular, saldo):
        self.nombre_titular = nombre_titular
        self.saldo = saldo
    def depositar(self, deposito):
        self.saldo += deposito
    def retirar(self, retiro):
        self.saldo-=retiro
cuenta1 = CuentaBancaria("Alberto", 200)
cuenta1.depositar(20)
print(f"titular: {cuenta1.nombre_titular} - saldo: {cuenta1.saldo}")

cuenta1.depositar(20)
print(f"titular: {cuenta1.nombre_titular} - saldo: {cuenta1.saldo}")

cuenta1.retirar(20)
print(f"titular: {cuenta1.nombre_titular} - saldo: {cuenta1.saldo}")