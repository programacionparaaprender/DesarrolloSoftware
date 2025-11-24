
#https://sepia-goldfish-a39.notion.site/Ejercicios-de-Polimorfismo-2138a76828a4802ea409fe63bce8a3a4

# Clase base
class Animal:
    def hacer_sonido(self):
        raise NotImplementedError("Este método debe ser sobrescrito por las subclases.")

# Clases hijas
class Perro(Animal):
    def hacer_sonido(self):
        return "Guau guau!"

class Gato(Animal):
    def hacer_sonido(self):
        return "Miau!"

class Vaca(Animal):
    def hacer_sonido(self):
        return "Muuuu!"

# Función que aplica polimorfismo
def hacer_ruido(animal: Animal):
    print(animal.hacer_sonido())

# Ejemplo de uso
if __name__ == "__main__":
    animales = [Perro(), Gato(), Vaca()]

    for a in animales:
        hacer_ruido(a)
