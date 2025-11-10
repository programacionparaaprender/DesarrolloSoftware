# 5. **Separar números pares e impares**
# Pide al usuario que ingrese 10 números. Luego, almacena los pares en una lista y los impares en otra. Al final, 
# imprime ambas listas.

numeros = []
pares = []
impares = []
""" for i in range(10):
    numero = int(input(f"Ingrese número #{i+1}: "))
    numeros.append(numero) """

numeros = [1,2,3,4,5,6,7,8,9,10]
for numero in numeros:
    if(numero % 2 == 0):
        pares.append(numero)
    elif(numero % 2 != 0):
        impares.append(numero)
print(f"números pares: {pares}")
print(f"números impares: {impares}") 