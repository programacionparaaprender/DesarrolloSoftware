#6. **Filtrar puntuaciones fuera del rango válido**   
#    Tienes una lista de puntajes `[45, 60, 89, 77, 91, 35, 100]`. Usa `filter` con `lambda` para extraer solo 
# aquellos valores que estén fuera del rango 50 a 90.

lista_puntajes = [45, 60, 89, 77, 91, 35, 100]
lista_rango = list(filter(lambda elemento:50 > elemento or elemento > 90, lista_puntajes))
print(f"{lista_rango}")