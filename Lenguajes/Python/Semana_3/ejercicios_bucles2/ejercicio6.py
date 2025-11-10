#6 6. **Contar repeticiones de letras en una palabra**
# Solicita una palabra al usuario. Luego, usa un diccionario para contar cuántas veces aparece cada letra. 
# Muestra el diccionario resultante. Por ejemplo, si la palabra es `casa`, debe retornar: `{'c': 1, 'a': 2, 's': 1}`.

palabra = "casa"
diccionario = {}
for letra in palabra:
    if letra not in diccionario.keys():
        diccionario[letra] = 1
    else:
        diccionario[letra] += 1
print(f"diccionario: {diccionario}")
