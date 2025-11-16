#8. **Limpiar y normalizar nombres de ciudades**
    
#    Se tiene una lista con nombres de ciudades que contienen espacios extra y mayúsculas inconsistentes: 
# `["  Lima", "AREQUIPA  ", " Cusco ", "TRUJILLO"]`. Diseña una función que limpie los espacios en blanco al inicio y al final y 
# convierta todos los nombres a minúsculas para estandarizar los datos.
#    El método `.strip()` es una **función de cadenas (strings) en Python** que sirve para eliminar los **espacios en blanco 
# (u otros caracteres especificados)** al **inicio y al final** de una cadena.

ciudades = ["  Lima", "AREQUIPA  ", " Cusco ", "TRUJILLO"]
def eliminar_espacios_mayusculas(ciudades):
    ciudades_nuevas = []
    for ciudad in ciudades:
        temp = ciudad.strip()
        temp = temp.lower()
        ciudades_nuevas.append(temp)
    return ciudades_nuevas
print(f"{eliminar_espacios_mayusculas(ciudades)}")