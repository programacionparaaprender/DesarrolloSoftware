#2. Convertir una lista de listas en una lista de sumas
#    Dada una lista como `[[1,2,3], [4,5], [10], [6,6,6]]`, usa **map + lambda** para convertirla en una lista donde 
# cada elemento sea la suma de los elementos internos.
#    Ejemplo: [6, 9, 10, 18].

lista_de_listas = [[1,2,3], [4,5], [10], [6,6,6]]
lista_de_suma = list(map(lambda elemento:sum(elemento), lista_de_listas))
print(f"lista de suma: {lista_de_suma}")