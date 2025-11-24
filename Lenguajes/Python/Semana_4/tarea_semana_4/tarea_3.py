#3. Números Mayores a la Media
# Crea una función llamada `mayores_a_media` que reciba una lista de números.
# La función debe:
# 1. Calcular la **media** (promedio) usando un **for** y operadores matemáticos (sin usar `sum()`).
# 2. Usar **filter** con una **lambda** para obtener solamente los valores mayores al promedio.
# 3. Retornar la lista de números filtrados.
# **Entrada:**
# ```jsx
# [4, 8, 10, 2, 6]
# ```
# **Salida esperada:**
# ```json
# Números mayores al promedio: [8, 10]
# ```

def mayores_a_media(numeros):
    # 1. Calcular la media manualmente (sin usar sum)
    total = 0
    for n in numeros:
        total += n

    media = total / len(numeros)

    # 2. Usar filter + lambda para obtener los mayores a la media
    mayores = list(filter(lambda x: x > media, numeros))

    return mayores
# Ejemplo de uso
if __name__ == "__main__":
    lista = [4, 8, 10, 2, 6]
    resultado = mayores_a_media(lista)
    print(f"Números mayores al promedio: {resultado}")
