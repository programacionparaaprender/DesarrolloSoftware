#https://sepia-goldfish-a39.notion.site/Ejercicios-Introducci-n-a-programaci-n-funcional-20b8a76828a48035bcd2d71474b398f9
# 1. **Transformar edades a años de nacimiento**
# Dada una lista de edades: `[18, 21, 35, 40, 50]`, usa `map` con `lambda` para obtener el año aproximado de 
# nacimiento de cada persona, asumiendo que el año actual es 2025. Devuelve la nueva lista con los años.

lista_edades = [18, 21, 35, 40, 50]
lista_nacimientos = list(map(lambda edad:2025 - edad, lista_edades))
print(f"lista de nacimientos {lista_nacimientos}")