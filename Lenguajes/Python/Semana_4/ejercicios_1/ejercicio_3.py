# 3. **Contar frecuencia de categorías en respuestas de encuesta**  
# En una encuesta de género, las respuestas registradas son: `["hombre", "mujer", "mujer", "hombre", "otro", "mujer", "hombre"]`. 
# Define una función que reciba esta lista y retorne un diccionario donde las claves sean las categorías y los valores la cantidad 
# de veces que aparece cada una, para hacer un análisis demográfico.

lista = ["hombre", "mujer", "mujer", "hombre", "otro", "mujer", "hombre"]
genero = ["Femenino", "Masculino"]
categorias = {"hombre": 0, "mujer": 0, "otro": 0}

def analizar_datos(logs):
    # Inicializa los contadores para cada nivel de log
    categorias = {"hombre": 0, "mujer": 0, "otro": 0}

    # Recorre cada entrada de log
    for entrada in logs:
        # Busca cada nivel de log en la entrada actual
        for nivel in categorias:
            # Si encuentra el nivel entre corchetes, incrementa su contador
            if nivel in entrada:
                categorias[nivel] += 1

    return categorias
conteo = analizar_datos(lista)
print(f"datos: {conteo}")

