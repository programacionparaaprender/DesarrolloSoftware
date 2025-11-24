#5. Estudiantes de Ciencia de Datos
    
#    Crea una clase Estudiante con atributos nombre y curso. Luego, una subclase EstudianteCienciaDatos que tenga una 
# lista herramientas (por ejemplo: pandas, matplotlib, seaborn).
#    Crea un método contar_herramientas() que devuelva la cantidad de herramientas que domina.
#    Fórmula sugerida: len(herramientas)

lista_herramientas = ["pandas", "matplotlib", "seaborn"]

class Estudiante:
    def __init__(self,nombre,curso):
        self.nombre=nombre
        self.curso=curso

class EstudianteCienciaDatos(Estudiante):
    def __init__(self, nombre, curso, lista_herramientas):
        super().__init__(nombre, curso)
        self.lista_herramientas = lista_herramientas
    def contar_herramientas(self) -> int:
        return len(self.lista_herramientas)
estudiante = EstudianteCienciaDatos("Alberto", "Analisis de Datos", lista_herramientas)
lista_estudiantes = []
lista_estudiantes.append(estudiante)
for estudiante in lista_estudiantes:
    print(f"estudiante: {estudiante.nombre} cantidad de herramientas: {estudiante.contar_herramientas()}")
