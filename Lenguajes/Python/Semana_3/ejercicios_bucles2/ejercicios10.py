# 10 Dada una lista con números repetidos, como [4, 7, 4, 3, 7, 2, 9, 2], crea un nuevo conjunto con los valores únicos y 
# luego muestra cuántos elementos distintos había en la lista original.

lista = [4, 7, 4, 3, 7, 2, 9, 2]
conjunto = set(lista)
distintos = len(lista) - len(conjunto)
print(f"elementos distintos eran: {distintos}")