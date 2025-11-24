#https://sepia-goldfish-a39.notion.site/Examen-Final-2b58a76828a48093bc36ce0da2fd3837
#1.  **Clasificador de números**
#   Escribe un programa que solicite al usuario **6 números enteros** y los almacene en una lista. Luego, el programa debe mostrar:
#   - La lista completa de números ingresados.
#   - Cuántos de esos números son **positivos**, **negativos** y cuántos son **ceros**.   
#    **Datos de entrada:**   
#    ```python
#    5
#    -2
#    0
#    7
#    -9
#    0
#    ```   
#    **Salida esperada:**   
#    ```python
#    Números ingresados: [5, -2, 0, 7, -9, 0]
#    Cantidad de positivos: 2
#    Cantidad de negativos: 2
#    Cantidad de ceros: 2
#    ```

nro1 = 5
nro2 = -2
nro3 = 0
nro4 = 7
nro5 = -9
nro6 = 0

nro1 = int(input("ingrese número 1: "))
nro2 = int(input("ingrese número 2: "))
nro3 = int(input("ingrese número 3: "))
nro4 = int(input("ingrese número 4: "))
nro5 = int(input("ingrese número 5: "))
nro6 = int(input("ingrese número 6: "))


numeros = [nro1, nro2, nro3, nro4, nro5, nro6]
def contar(numeros):
    cuantos = {"positivos":0, "negativos":0, "ceros":0}
    for numero in numeros:
        if(numero > 0):
            cuantos["positivos"] += 1
        elif (numero == 0):
            cuantos["ceros"] += 1
        elif (numero < 0):
            cuantos["negativos"] += 1
    return cuantos
def mostrar(numeros,cuantos):
    print(f"Números ingresados: {numeros}")
    print(f"Cantidad de positivos: {cuantos['positivos']}")
    print(f"Cantidad de negativos: {cuantos['negativos']}")
    print(f"Cantidad de ceros: {cuantos['ceros']}")

# Ejemplo de uso
if __name__ == "__main__":
    mostrar(numeros,contar(numeros))