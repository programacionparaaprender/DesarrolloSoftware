#4. Tipos de Visualizaciones
# Crea una clase Visualizacion con un método mostrar(). Luego crea subclases GraficoBarras, GraficoLineas y GraficoTorta.
# Cada clase debe redefinir el método mostrar() para describir el tipo de visualización que implementa y cuándo se 
# recomienda usarlo.

class Visualizacion:
    def mostrar(self) -> str:
        return ""
    
class GraficoBarras(Visualizacion):
    def mostrar(self) -> str:
        return "Para mostrar varios productos y comparar el que tiene mayor valor"
class GraficoLineas(Visualizacion):
    def mostrar(self) -> str:
        return "Para mostrar un producto que varia su valor en el tiempo"
class GraficoTorta(Visualizacion):
    def mostrar(self) -> str:
        return "Comparar varios productos y ver cuales son más usados"
