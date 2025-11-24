#4. Clase Sensor – Actualización de Lecturas
# Crea una clase `Sensor` que tenga: nombre del `sensor, valor actual y unidad` (por ejemplo, "°C", "%", etc.).
# Agrega un método que permita actualizar el valor del sensor con uno nuevo.
#📌 **Pista:** Solo necesitas reemplazar el valor actual por uno nuevo, sin cálculos.

class Sensor:
    def __init__(self, nombre, valor_actual, unidad):
        self.nombre = nombre
        self.valor_actual = valor_actual
        self.unidad = unidad

    def actualizar_valor(self, nuevo_valor):
        self.valor_actual = nuevo_valor

sensor1 = Sensor("Temperatura", 25, "°C")
print(f"{sensor1.valor_actual}")
sensor1.actualizar_valor(30)
print(f"{sensor1.valor_actual}")    