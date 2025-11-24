#6. Proyectos de Ciencia de Datos
#   Crea una clase Proyecto con atributos nombre, duracion_meses. Luego crea una subclase ProyectoML con un 
# atributo adicional modelos_usados (lista) ("Regresión Lineal", "Árbol de Decisión", "Red Neuronal").
#   Implementa un método que calcule la densidad de modelos:   
#   **Fórmula:**

modelos_usados = ("Regresión Lineal", "Árbol de Decisión", "Red Neuronal")

class Proyecto: 
    def __init__(self, nombre, duracion_meses):
        self.nombre = nombre 
        self.duracion_meses = duracion_meses

class ProyectoML(Proyecto):
    def __init__(self, nombre, duracion_meses, modelos_usados):
        super().__init__(nombre, duracion_meses)
        self.modelos_usados = modelos_usados
        self.densidad_modelos = len(modelos_usados) / duracion_meses
proyectoML = ProyectoML("Proyecto 1", 20, modelos_usados)
print(f"Proyecto 1: {proyectoML.densidad_modelos}")