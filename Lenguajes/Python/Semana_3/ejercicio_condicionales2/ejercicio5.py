#5. **Detección de nombres duplicados en lista**
#Se tiene una lista con tres nombres de personas que se han inscrito en un evento, por ejemplo: 
#`["Luis", "Ana", "Luis"]`. Escribe un programa que verifique si hay algún nombre repetido. 
#Para ello, compara la cantidad de elementos de la lista con la cantidad de elementos únicos usando un conjunto. 
#Si hay diferencias, muestra el mensaje “Hay nombres duplicados”; en caso contrario, “Todos los nombres son únicos”.
nombres = ["Luis", "Ana", "Luis"]
contador = 0
nombreRepetido = ""
for nombre in nombres:
    for nom2 in nombres:
        if(nombre == nom2):
            contador+=1
            nombreRepetido = nombre
    if(contador>1):
        print(f"Hay nombres repetidos {nombreRepetido}")
        break

# Compara la cantidad de elementos de la lista con la cantidad de elementos únicos
if len(nombres) != len(set(nombres)):
    print("Hay nombres duplicados")
else:
    print("Todos los nombres son únicos")

