#3. Clase Estudiante – Cálculo de Promedio
#  Crea una clase `Estudiante` que tenga: `nombre y una lista de calificaciones`.
#  Agrega un método que calcule y devuelva el promedio de las calificaciones.
#  📌 Fórmula:
# Promedio = suma de calificaciones ÷ número total de calificaciones

class Estudiante:
    def __init__(self, nombre, lista_calificaciones):
        self.nombre = nombre
        self.lista_calificaciones = lista_calificaciones
        self.promedio = sum(lista_calificaciones) / len(lista_calificaciones)
estudiante1 = Estudiante("Alberto", [17.0, 18.20, 20.0, 20.0])
print(f"{estudiante1.promedio}")
    