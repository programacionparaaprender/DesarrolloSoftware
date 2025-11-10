
# https://sepia-goldfish-a39.notion.site/Ejercicios-Bucles-for-y-while-uso-de-range-2098a76828a48003a228f5e16858636e
#1. **Clasificar edades en grupos**
# Pide al usuario que ingrese 10 edades. Guarda cada edad en una lista. Luego, recorre esa lista y clasifica cuántas 
# personas hay en estos grupos: menores de edad (0-17), adultos (18-59), y adultos mayores (60+). Muestra el total de 
# personas en cada grupo.

edades = [20,21,22,23,24,25,26,27,28,29,30]
menores = []
adultos = []
mayores = []
""" edad1 = input("ingrese edad:")
edad2 = input("ingrese edad:")
edad3 = input("ingrese edad:")
edad4 = input("ingrese edad:")
edad5 = input("ingrese edad:")
edad6 = input("ingrese edad:")
edad7 = input("ingrese edad:")
edad8 = input("ingrese edad:")
edad9 = input("ingrese edad:")
edad10 = input("ingrese edad:")
edades = [edad1,edad2,edad3,edad4,edad5,edad6,edad7,edad8,edad9,edad10]
 """
""" edades = []
for i in range(10):
    edad = int(input(f"Ingrese la edad #{i+1}: "))
    edades.append(edad) """


for edad in edades:
    if(edad <= 17):
        menores.append(edad)
    elif(18<=edad<=59):
        adultos.append(edad)
    elif(edad>=60):
        mayores.append(edad)
print(f"total de menores: {len(menores)}")
print(f"total de adultos: {len(adultos)}")
print(f"total de mayores: {len(mayores)}")
