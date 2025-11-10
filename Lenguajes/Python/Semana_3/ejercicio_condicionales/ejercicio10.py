#10. Identificación de años bisiestos
#Crea un programa que determine si un año es bisiesto, aplicando la siguiente regla:
#Un año es bisiesto si es divisible entre 4 y no divisible entre 100, a menos que también sea divisible entre 400.
#Por ejemplo, 2024 es bisiesto, pero 2100 no lo es, y 2000 sí lo es. 
#Solución
# Solicita al usuario que ingrese un año
anio = int(input("Ingrese un año: "))

# Determina si el año es bisiesto según las reglas establecidas
if (anio % 4 == 0 and anio % 100 != 0) or (anio % 400 == 0):
    print("El año es bisiesto")
else:
    print("El año no es bisiesto")