#4. Filtrado de Aprobados con Promedio Mínimo
#    Crea una función `aprobados_con_promedio` que reciba una lista de estudiantes, cada uno representado como un 
# diccionario.   
#    La función debe calcular el promedio usando map y lambda, luego usar filter para retornar solo los estudiantes con 
# promedio mayor o igual a 14.
#    Debe retornar una lista solo con los nombres de los estudiantes aprobados.   
#    **Entrada:**   
#    ```jsx
#    [
#      {"nombre": "Ana", "notas": [12, 14, 16]},
#      {"nombre": "Luis", "notas": [10, 11, 12]},
#      {"nombre": "María", "notas": [15, 18, 17]}
#    ]
#    ```   
#    **Salida esperada:**
#    ```jsx
#    ["Ana", "María"]
#    ```
def aprobados_con_promedio(estudiantes):

    # 1. Crear una lista de tuplas: (nombre, promedio)
    promedios = list(
        map(lambda est: (est["nombre"], sum(est["notas"]) / len(est["notas"])), estudiantes)
    )

    # 2. Filtrar los que tienen promedio >= 14
    aprobados = list(filter(lambda tupla: tupla[1] >= 14, promedios))

    # 3. Retornar solo los nombres
    return [nombre for nombre, _ in aprobados]
estudiantes = [
    {"nombre": "Ana", "notas": [12, 14, 16]},
    {"nombre": "Luis", "notas": [10, 11, 12]},
    {"nombre": "María", "notas": [15, 18, 17]}
]

# Ejemplo de uso
if __name__ == "__main__":
    print(aprobados_con_promedio(estudiantes))

