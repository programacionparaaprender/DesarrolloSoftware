# https://sepia-goldfish-a39.notion.site/Ejercicios-Herencia-2138a76828a4808388e3fe26713485c5?source=copy_link

#1. Empleado de Empresa de Datos
# Crea una clase Empleado con atributos nombre, edad y salario. Luego crea una subclase AnalistaDatos que 
# agregue un 
# atributo lenguajes_analisis (por ejemplo: Python, R, SQL).
# Implementa un método mostrar_info() que imprima el nombre del analista y los lenguajes que utiliza.

class Empleado: 
    def __init__(self,nombre, edad, salario):
        self.nombre = nombre 
        self.edad = edad
        self.salario = salario
    def __str__(self) -> str:
        return f"Nombre: {self.nombre})"
    
class AnalistaDatos(Empleado):
    def __init__(self,nombre, edad, salario, lenguajes_analisis):
        super().__init__(nombre, edad, salario)
        self.lenguajes_analisis = lenguajes_analisis
    def __str__(self) -> str:
        return f"Nombre: {self.nombre} lenguajes {self.lenguajes_analisis}"
def mostrar_info():
    analista1 = AnalistaDatos("Alberto", 20, 6500, ["Python", "R", "SQL"])
    analistas = []
    analistas.append(analista1)
    for analista in analistas:
        print(f"analista {analista}")
# Ejemplo de uso
if __name__ == "__main__":
    mostrar_info()