#1. Eliminación de Duplicados y Suma de Pares
#    Crea una función `procesar_lista` que reciba una lista de números y retorne la suma de pares.
#    Requisitos:
#    - Eliminar valores duplicados usando una estructura de datos (set).
#    - Convertir nuevamente a lista.
#    - Usar **filter** para quedarte solo con los pares.
#    - Sumar manualmente esos pares usando un **for**.
#    **Entrada:**
#    ```jsx
#    [4, 2, 4, 7, 2, 10, 10, 3]
#    ```
#    **Salida esperada:**    
#    ```jsx
#    Suma de pares: 16
#    ```

def procesar_lista(numeros):
    # 1. Eliminar duplicados usando un set
    numeros_sin_duplicados = set(numeros)

    # 2. Convertir nuevamente a lista
    lista_unica = list(numeros_sin_duplicados)

    # 3. Usar filter para quedarte solo con los pares
    pares = list(filter(lambda x: x % 2 == 0, lista_unica))

    # 4. Sumar manualmente usando un for
    suma = 0
    for num in pares:
        suma += num

    return suma

# Ejemplo de uso
if __name__ == "__main__":
    lista = [4, 2, 4, 7, 2, 10, 10, 3]
    resultado = procesar_lista(lista)
    print(f"Suma de pares: {resultado}")

