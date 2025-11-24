#2. Clasificación de Palabras y Conteo de Vocales
# Crea una función `analizar_palabras` que reciba una lista de palabras.
# Debe retornar un diccionario con:
# 1. `"cortas"` → palabras con ≤ 4 letras
# 2. `"largas"` → palabras con > 4 letras
# 3. `"vocales_totales"` → total de vocales en todas las palabras (usa **for**, condicionales y operadores**) ("aeiouAEIOU”).
# No usar librerías externas.
# **Entrada:**
# ```jsx
# ["sol", "python", "dia", "cielo"]
# ```
# **Salida esperada:**
# ```jsx
# {
# "cortas": ["sol", "dia"],
#  "largas": ["python", "cielo"],
#  "vocales_totales": 6
# }
# ```

def analizar_palabras(palabras):
    resultado = {
        "cortas": [],
        "largas": [],
        "vocales_totales": 0
    }

    vocales = "aeiouAEIOU"

    # Recorrer cada palabra
    for palabra in palabras:

        # Clasificación por longitud
        if len(palabra) <= 4:
            resultado["cortas"].append(palabra)
        else:
            resultado["largas"].append(palabra)

        # Contar vocales manualmente
        for letra in palabra:
            if letra in vocales:
                resultado["vocales_totales"] += 1

    return resultado

# Ejemplo de uso
if __name__ == "__main__":
    entrada = ["sol", "python", "dia", "cielo"]
    print(analizar_palabras(entrada))
