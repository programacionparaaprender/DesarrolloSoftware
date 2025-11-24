#https://sepia-goldfish-a39.notion.site/Ejercicios-POO-clases-objetos-atributos-y-m-todos-2118a76828a4814f929ef4a2ddd5cd6e
#Crea una clase llamada `Persona` que tenga como atributos: `nombre, edad y país de origen`.
#Implementa un método que devuelva una presentación como:
#> “Hola, soy Juan, tengo 25 años y soy de Perú.”
#> 
#📌 **Recuerda:** Debes concatenar los atributos en una sola cadena de texto.

class Persona:
    def __init__(self, nombre="", edad=0, pais_origen=""):
        self.nombre = nombre
        self.edad = edad
        self.pais_origen = pais_origen

    def mostrar(self):
        return f"Hola, soy {self.nombre}, tengo {self.edad} años y soy de {self.pais_origen}."

persona1 = Persona("Juan", 25, "Perú")
print(persona1.mostrar())