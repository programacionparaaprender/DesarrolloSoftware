# 5. **Convertir nombres de productos a mayúsculas**
# A partir de la lista de productos `["arroz", "leche", "pan", "azúcar"]`, usa `map` y `lambda` para devolver una 
# nueva lista donde cada nombre esté en mayúsculas.
lista_productos = ["arroz", "leche", "pan", "azúcar"]
lista_mayuscula = list(map(lambda elemento:elemento.upper(), lista_productos))
print(f"{lista_mayuscula}")