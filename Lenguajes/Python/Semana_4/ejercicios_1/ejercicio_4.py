#4. **Etiquetar grupos etarios en una población**
#    Dada una lista de edades de personas en una población: `[5, 14, 23, 67, 45, 12, 17]`, crea una función que clasifique cada edad 
# en una etiqueta según el rango:
#    - `"niño"` para edades entre 0 y 12 años
#    - `"adolescente"` para 13 a 17 años
#    - `"adulto"` para 18 a 59 años
#    - `"adulto mayor"` para 60 años o más        
#        La función debe retornar una lista con las etiquetas correspondientes.

poblaciones = [5, 14, 23, 67, 45, 12, 17]

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

print(f"{etiquetar_grupos_etareos(poblaciones)}")