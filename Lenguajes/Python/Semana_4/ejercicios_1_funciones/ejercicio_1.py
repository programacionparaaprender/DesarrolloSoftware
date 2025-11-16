# https://sepia-goldfish-a39.notion.site/Ejercicios-Funciones-2ad8a76828a480a4a089d3e908286300
#1. **Calcular la media de una lista de datos numéricos**
#    Dada una lista que representa temperaturas registradas durante una semana: `[23, 19, 31, 22, 27, 20, 18]`, 
# crea una función que reciba esta lista y calcule el promedio de las temperaturas. 
# La función debe retornar un número decimal con la media de la lista.

lista = [23, 19, 31, 22, 27, 20, 18]

def promedio_temperaturas(temperaturas):
    return sum(temperaturas) / len(temperaturas)

def calcula_media_de_lista(lista):
    elementos_lista = len(lista)
    suma_lista = 0
    for elemento in lista:
        suma_lista += elemento
    media = suma_lista / elementos_lista
    return media
print(f"media de la lista: {calcula_media_de_lista(lista)}")