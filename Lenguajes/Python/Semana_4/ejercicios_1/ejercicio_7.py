#7. **Filtrar ingresos mensuales superiores a un umbral**   
#    En una empresa, tienes los ingresos mensuales de algunos empleados en la lista `[4500, 3200, 6100, 2800, 5000]`. 
# Crea una función que reciba esta lista y un umbral (por ejemplo, `4000`) y retorne una nueva lista que contenga solo los 
# ingresos que superen ese umbral. Esto ayudará a identificar a los empleados con ingresos altos.
ingresos = [4500, 3200, 6100, 2800, 5000]
umbral = 4000
def obtener_superior_umbral(ingresos):
    lista_umbral = []
    umbral = 4000
    for ingreso in ingresos:
        if(ingreso > umbral):
            lista_umbral.append(ingreso)
    return lista_umbral
print(f"ingresos superiores al umbral: {obtener_superior_umbral(ingresos)}")
