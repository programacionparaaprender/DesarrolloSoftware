#5. Agrupar Números por Signo
#    Crea una función `agrupar_por_signo` que reciba una lista de enteros.
#    La función debe recorrer la lista usando un **for** y clasificar cada número en un diccionario con la siguiente 
# estructura:
#   ```jsx
#   {
#     "positivos": [...],   # números > 0
#      "negativos": [...],   # números < 0
#      "ceros": 0            # cantidad de ceros
#    }
#    ```
#    Usa condicionales para decidir en qué grupo cae cada número.
#   **Entrada:**
#   ```jsx
#   [0, -3, 5, 0, 2, -1, 7]
#    ```
#   **Salida esperada:**
#   ```jsx
#   {
#     "positivos": [5, 2, 7],
#      "negativos": [-3, -1],
#      "ceros": 2
#    }
#    ```
def agrupar_por_signo(numeros):
    resultado = {
        "positivos": [],
        "negativos": [],
        "ceros": 0
    }

    # Recorrer cada número y clasificarlo
    for n in numeros:
        if n > 0:
            resultado["positivos"].append(n)
        elif n < 0:
            resultado["negativos"].append(n)
        else:
            resultado["ceros"] += 1

    return resultado

# Ejemplo de uso
if __name__ == "__main__":
    lista = [0, -3, 5, 0, 2, -1, 7]
    print(agrupar_por_signo(lista))
