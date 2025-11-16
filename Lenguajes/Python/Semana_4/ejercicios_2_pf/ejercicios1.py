# https://sepia-goldfish-a39.notion.site/Ejercicios-Introducci-n-a-programaci-n-funcional-2ad8a76828a480e894cdfee22676c4a6
#1. Filtrar tuplas donde la suma de sus elementos sea mayor a 20
# Dada una lista de tuplas como `[(5, 10), (10, 15), (2, 3)]`, utiliza **filter + lambda** para quedarte solo con 
# las tuplas cuya suma sea mayor a 20. Luego imprime la lista final.
lista_tuplas = [(5, 10), (10, 15), (2, 3)]
ingresos_mayores = list(filter(lambda tupla:sum(tupla) >= 20, lista_tuplas))
print(f"{ingresos_mayores}")