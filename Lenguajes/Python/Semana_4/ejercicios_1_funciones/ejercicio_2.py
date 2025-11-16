#2. **Clasificar calificaciones en categorías**
    
#    Tienes una lista de calificaciones de estudiantes en una evaluación:
#    
#    `[18, 14, 11, 9, 20, 16, 7, 13]`
#    
#    Escribe una función que reciba esta lista y retorne una nueva lista con etiquetas según el rendimiento:
    
#    - `"Excelente"` si la nota es mayor o igual a 18
#    - `"Bueno"` si está entre 14 y 17
#    - `"Regular"` si está entre 11 y 13
#    - `"Deficiente"` si es menor o igual a 10

calificaciones = [18, 14, 11, 9, 20, 16, 7, 13]
def calificaciones_etiquetas(calificaciones):
    calificaciones_etiqueta = []
    for calificacion in calificaciones:
        etiqueta = ""
        if(calificacion>=18):
            etiqueta = "Excelente"
        elif(14<=calificacion<=17):
            etiqueta = "Bueno"
        elif(11<=calificacion<=13):
            etiqueta="Regular"
        elif(calificacion<=10):
            etiqueta="Deficiente"
        calificaciones_etiqueta.append({
            "calificacion": calificacion,
            "etiqueta":etiqueta
        })
    return calificaciones_etiqueta

def etiquetar_rendimiento(calificaciones):
    etiquetas = []
    for nota in calificaciones:
        if nota >= 18:
            etiquetas.append("Excelente")
        elif 14 <= nota <= 17:
            etiquetas.append("Bueno")
        elif 11 <= nota <= 13:
            etiquetas.append("Regular")
        elif nota <= 10:
            etiquetas.append("Deficiente")
    return etiquetas

lista = calificaciones_etiquetas(calificaciones)
print(f"Calificaciones: {lista}")