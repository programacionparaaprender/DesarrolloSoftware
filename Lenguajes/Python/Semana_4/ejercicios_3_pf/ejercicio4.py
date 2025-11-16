#4. **Calcular cuadrados de medidas**
# Con una lista de medidas numéricas `[2, 3, 4, 5, 6]`, utiliza `map` y `lambda` para obtener una lista con cada 
# número elevado al cuadrado.

lista = [2, 3, 4, 5, 6]
lista_cuadrado = list(map(lambda elemento:elemento ** 2, lista))
print(f"{lista_cuadrado}")