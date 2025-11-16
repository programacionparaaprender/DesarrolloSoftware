#3. **Filtrar respuestas vacías de un formulario**
# Tienes una lista de respuestas tipo texto: `["sí", "", "no", "sí", "", "sí"]`. Usa `filter` y `lambda` para 
# eliminar las cadenas vacías y quedarte solo con respuestas válidas.

lista = ["sí", "", "no", "sí", "", "sí"]
lista_valida = list(filter(lambda elemento:len(elemento) > 0, lista))
print(f"{lista_valida}")