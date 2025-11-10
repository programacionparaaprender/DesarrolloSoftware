#3. **Filtrar productos con stock mayor a 10 unidades**
#Dado un diccionario con productos y su cantidad en stock, como `{"arroz": 15, "azúcar": 8, "leche": 20, "pan": 5}`, 
# recorre el diccionario e imprime solo los productos cuya cantidad sea mayor a 10 unidades.

productos = {"arroz": 15, "azúcar": 8, "leche": 20, "pan": 5}
for producto in productos.items():
    if(producto[1] > 10):
        print(f"producto {producto[0]} tiene más de diez unidades")
# Recorre el diccionario e imprime solo los productos con cantidad mayor a 10
for producto, cantidad in productos.items():
    if cantidad > 10:
        print(producto)