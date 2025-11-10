# https://sepia-goldfish-a39.notion.site/Ejercicios-Condicionales-2098a76828a480019640d6516386dd73
# 1. Clasificación etaria para segmentación de clientes
#Desarrolla un programa que clasifique a una persona en una categoría etaria según su edad:
#"Niño" si la edad es menor a 13 años,
#"Adolescente" si está entre 13 y 17 años inclusive,
#"Adulto" si está entre 18 y 64 años inclusive,
#"Adulto mayor" si tiene 65 años o más.
#Solución
# Solicita al usuario que ingrese la edad
edad = int(input("Ingrese la edad de la persona: "))

# Verifica si la persona es un niño
if edad < 13:
    print("La persona es: Niño")
# Verifica si la persona es un adolescente
elif 13 <= edad <= 17:
    print("La persona es: Adolescente")
# Verifica si la persona es un adulto
elif 18 <= edad <= 64:
    print("La persona es: Adulto")
# Si no cumple ninguna de las anteriores, es un adulto mayor
else:
    print("La persona es: Adulto mayor")


