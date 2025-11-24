#6. Clase Cliente – Registro de Compras
# Crea una clase `Cliente` con los siguientes datos: `nombre, correo electrónico y número de compras realizadas`.
# Agrega un método que registre una nueva compra (es decir, sume 1 al contador de compras).
#📌 **Fórmula:**
# Nuevas compras = compras anteriores + 1

class Cliente:
    def __init__(self, nombre, correo_electronico, n_compras_realizadas):
        self.nombre = nombre
        self.correo_electronico = correo_electronico
        self.n_compras_realizadas = n_compras_realizadas
cliente1= Cliente("Cliente 1", "cliente1@correo.com", 20)
print(f"{cliente1.nombre} - {cliente1.correo_electronico} - {cliente1.n_compras_realizadas}")
