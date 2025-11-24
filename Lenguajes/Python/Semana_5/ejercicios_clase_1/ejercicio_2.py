#2. Clase Producto – Precio con Descuento
# Crea una clase llamada `Producto` que tenga: `nombre, precio original y categoría` (como "tecnología", "alimentos", etc.). 
# Crea un método que calcule el precio final con 15% de descuento.
# 📌 Fórmula:
# Precio final = precio original × 0.85
categorías = ["tecnología", "alimentos"]

class Producto:
    def __init__(self, nombre="", precio_original=0.0, categoria=""):
        self.nombre = nombre
        self.precio_original = precio_original
        self.categoria = categoria
        self.precio_final = self.precio_original * 0.85

producto1 = Producto("Producto 1", 20.0, categorías[0])

print(producto1.precio_final)        