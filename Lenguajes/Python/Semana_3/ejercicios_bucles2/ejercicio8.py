# 8. **Buscar coincidencias en dos listas**
# Dadas dos listas de nombres, por ejemplo `["Ana", "Luis", "Pedro"]` y `["Luis", "María", "Ana"]`, 
# encuentra cuáles nombres están en ambas listas. Usa un conjunto para facilitar la comparación.

lista1 = ["Ana", "Luis", "Pedro"]
lista2 = ["Luis", "María", "Ana"]
interseccion = lista1 and lista2

print(f"interseccion {interseccion}")

nombres_comunes = set(lista1) & set(lista2)

# Muestra los nombres que están en ambas listas
print("Nombres en ambas listas:", nombres_comunes)