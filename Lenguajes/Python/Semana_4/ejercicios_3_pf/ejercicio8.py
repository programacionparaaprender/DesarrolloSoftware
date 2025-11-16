#8. **Clasificar edades en grupos etarios**
#    Con la lista de edades `[5, 14, 23, 67, 45, 12, 17]`, usa `map` con `lambda` para etiquetar cada edad como: 
# `"niño"`, `"adolescente"`, `"adulto"` o `"mayor"` según su rango.
lista_edades = [5, 14, 23, 67, 45, 12, 17]
rango = ["niño", "adolescente", "adulto", "mayor"]
def etiquetar_grupos_etareos(poblacion):
    etiquetas = []
    for persona in poblacion:
        if 0 <= persona<= 12:
            etiquetas.append("niño")
        elif 13 <= persona <= 17:
            etiquetas.append("adolescente")
        elif 18 <= persona <= 59:
            etiquetas.append("adulto")
        elif persona >= 60:
            etiquetas.append("adulto mayor")
    return etiquetas
lista_mayuscula = list(map(lambda elemento:elemento.upper(), lista_productos))

