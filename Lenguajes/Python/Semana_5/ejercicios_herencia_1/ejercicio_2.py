#2. Fuentes de Datos
    
#    Diseña una clase FuenteDatos con un atributo origen y un método conectar(). Crea dos subclases: 
# FuenteCSV y FuenteSQL.
#    Cada una debe tener un método leer_datos() que indique de qué tipo de fuente se están extrayendo los datos.
from abc import ABC
from dataclasses import dataclass

class FuenteDatos(ABC):
    def __init__(self, origen):
        self.origen = origen

    def conectar(self):
        print(f"Conectando a la fuente de datos: {self.origen}")

@dataclass
class FuenteCSV(FuenteDatos):
    def __init__(self, origen):
        super().__init__(origen)
    def leer_datos(self):
        print(f"Leyendo datos desde un archivo CSV: {self.origen}")

@dataclass
class FuenteSQL(FuenteDatos):
    def __init__(self, origen):
        super().__init__(origen)
    def leer_datos(self):
        print(f"Leyendo datos desde una base de datos SQL: {self.origen}")


# Ejemplo de uso
csv = FuenteCSV("datos.csv")
csv.conectar()
csv.leer_datos()

sql = FuenteSQL("servidor_bd")
sql.conectar()
sql.leer_datos()


