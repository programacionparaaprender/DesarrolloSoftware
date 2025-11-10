#4. Crea un diccionario con nombres de estudiantes como claves y sus notas como valores. 
# Por ejemplo: {"Ana": 15, "Luis": 12, "Juan": 18}. Muestra el nombre de los estudiantes que aprobaron con nota mayor o 
# igual a 14.
estudiantes = {"Ana": 15, "Luis": 12, "Juan": 18};
for estudiante, nota in estudiantes.items():
    if(nota >= 14):
        print(estudiante)
