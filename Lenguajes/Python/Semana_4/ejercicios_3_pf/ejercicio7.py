#7. **Filtrar nombres que comienzan con vocal**
# Dada la lista de nombres `["Ana", "Luis", "Óscar", "Elena", "Carlos", "Iván"]`, utiliza `filter` con `lambda` 
# para retornar solo aquellos nombres que empiezan con una vocal.

lista_nombres = ["Ana", "Luis", "Óscar", "Elena", "Carlos", "Iván"]
vocales = ("a", "e", "i", "o", "u")  # tupla de vocales
lista_rango = list(filter(lambda elemento:elemento.lower().startswith(vocales), lista_nombres))
print(f"{lista_rango}")