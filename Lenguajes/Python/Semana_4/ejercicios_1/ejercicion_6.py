#6. **Determinar el rango de puntajes de exámenes**   
#    Tienes los puntajes obtenidos por un grupo de estudiantes en un examen: `[88, 74, 92, 67, 85, 78, 90]`. 
# Crea una función que reciba esta lista y retorne una tupla con el puntaje mínimo y máximo, para conocer el rango de desempeño 
# del grupo.
examenes = [88, 74, 92, 67, 85, 78, 90]
def puntaje_minimo_maximo(examenes):
    minimo = min(examenes)
    maximo = max(examenes)
    return tuple([minimo, maximo])
print(f"nota minima y maxima fue {puntaje_minimo_maximo(examenes)}")
