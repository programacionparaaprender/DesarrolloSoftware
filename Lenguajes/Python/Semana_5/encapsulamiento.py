
#https://sepia-goldfish-a39.notion.site/Ejercicios-de-Encapsulamiento-2138a76828a480888d17c109849717de

class Producto:
    def __init__(self, nombre, precio):
        self.nombre = nombre
        self.__precio = None     # atributo privado real
        self.precio = precio     # pasa por el setter al inicializar

    @property
    def precio(self):
        """Getter: devuelve el precio actual."""
        return self.__precio

    @precio.setter
    def precio(self, valor):
        """Setter: valida que el precio sea correcto."""
        if valor < 0:
            raise ValueError("El precio no puede ser negativo.")
        self.__precio = valor

    def __str__(self):
        return f"Producto: {self.nombre}, Precio: S/ {self.__precio}"
p = Producto("Laptop", 3500)

print(p.precio)       # 3500
p.precio = 4200       # Cambia usando el setter
print(p.precio)       # 4200

# Intento de asignar un valor inválido:
p.precio = -10        # ❌ ValueError: El precio no puede ser negativo
