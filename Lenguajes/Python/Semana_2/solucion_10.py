## ejercicios

# 1 Tienes una lista con los puntajes de un examen de matemáticas: [14, 16, 13, 18, 20, 15]. Calcula cuántos estudiantes hay en total y cuál fue el 
# puntaje más alto usando la lista.
# Solución
puntajes = [14, 16, 13, 18, 20, 15]

cantidad_estudiantes = len(puntajes)
puntaje_mas_alto = max(puntajes)

print(f"Cantidad total de estudiantes: {cantidad_estudiantes}")
print(f"El puntaje más alto es: {puntaje_mas_alto}")

#2 Un supermercado registró los precios de algunos productos como una tupla: (3.5, 2.8, 4.2, 1.9), donde cada número representa el precio en soles de un producto. Calcula el precio total sumando todos los elementos de la tupla.
# Solución
precios = (3.5, 2.8, 4.2, 1.9)

precio_total = precios[0] + precios[1] + precios[2] + precios[3]
precio_total2 = sum(precios)
print("El precio total es:", precio_total, "soles")
print("El precio total es:", precio_total2, "soles")

#3 Se te entrega un diccionario con el número de estudiantes por curso: {"Matemáticas": 25, "Historia": 20, "Biología": 22}. 
# Muestra cuántos cursos hay en total y cuántos estudiantes hay sumando todos.
# Solución
estudiantes_por_curso = {"Matemáticas": 25, "Historia": 20, "Biología": 22}
cantidad_curso = len(estudiantes_por_curso.keys())
cantidad_estudiante = sum(estudiantes_por_curso.values())

print(f"cantidad de curso {cantidad_curso}")
print(f"cantidad de estudiantes {cantidad_estudiante}")
cantidad_cursos = len(estudiantes_por_curso)

total_estudiantes = estudiantes_por_curso["Matemáticas"] + estudiantes_por_curso["Historia"] + estudiantes_por_curso["Biología"]

print("Cantidad total de cursos:", cantidad_cursos)
print("Cantidad total de estudiantes:", total_estudiantes)

#4 Tienes un conjunto con las siguientes ciudades donde se realizaron encuestas: {"Lima", "Cusco", "Arequipa", "Trujillo"}. 
# Agrega una nueva ciudad al conjunto y muestra cuántas ciudades únicas hay ahora.
# Solución
ciudades = {"Lima", "Cusco", "Arequipa", "Trujillo"}
ciudades.add("Piura")
ciudades.add("Cajamarca")
ciudades.add("Tarapoto")

cantidad_ciudades = len(ciudades)

print("Ciudades encuestadas:", ciudades)
print("Cantidad de ciudades únicas:", cantidad_ciudades)

#5 Se tiene una lista de edades: [18, 21, 19, 18, 22, 21, 20]. Convierte la lista a un conjunto para eliminar los duplicados y calcula cuántas 
# edades distintas se registraron.
# Solución
edades = [18, 21, 19, 18, 22, 21, 20]

edades_distintas = set(edades)

cantidad_edades_distintas = len(edades_distintas)

print("Edades distintas registradas:", edades_distintas)
print("Cantidad de edades distintas:", cantidad_edades_distintas)

# 6 Te dan un diccionario con los nombres de estudiantes y sus notas: {"Ana": 17, "Luis": 15, "Carlos": 19}. 
# Agrega un nuevo estudiante con su nota y luego calcula el promedio de todas las notas.
# Solución
notas = {"Ana": 17, "Luis": 15, "Carlos": 19}

notas["María"] = 18
suma_notas2 = sum(notas.values())
suma_notas = notas["Ana"] + notas["Luis"] + notas["Carlos"] + notas["María"]
cantidad_estudiantes = len(notas)
promedio = suma_notas / cantidad_estudiantes
promedio2 = suma_notas2 / cantidad_estudiantes 
print("Notas de los estudiantes:", notas)
print("Promedio de notas:", promedio)
print("Promedio de notas:", promedio2)

#7 Hay dos conjuntos que representan los síntomas reportados por pacientes de dos regiones: región_A = {"fiebre", "tos", "dolor de cabeza"} 
# y región_B = {"tos", "dolor muscular", "fiebre"}. Encuentra los síntomas comunes entre ambas regiones.
# Solución
región_A = {"fiebre", "tos", "dolor de cabeza"}
región_B = {"tos", "dolor muscular", "fiebre"}

sintomas_comunes = región_A & región_B

print("Síntomas comunes entre ambas regiones:", sintomas_comunes)

# 8 Se registraron los precios de productos en dos tuplas: productos_enero = (10, 15, 12) y productos_febrero = (11, 14, 13). 
# Calcula la diferencia de precio para cada producto restando los valores correspondientes de cada tupla.
# Solución
productos_enero = (10, 15, 12)
productos_febrero = (11, 14, 13)

diferencia_1 = productos_febrero[0] - productos_enero[0]
diferencia_2 = productos_febrero[1] - productos_enero[1]
diferencia_3 = productos_febrero[2] - productos_enero[2]

print("Diferencia de precio producto 1:", diferencia_1)
print("Diferencia de precio producto 2:", diferencia_2)
print("Diferencia de precio producto 3:", diferencia_3)

# 9 Un diccionario contiene la cantidad de visitas a tres páginas web: {"inicio": 150, "productos": 200, "contacto": 75}. 
# Actualiza el valor de la página “contacto” a 100 visitas y calcula el total de visitas sumando todos los valores.
# Solución
visitas = {"inicio": 150, "productos": 200, "contacto": 75}

visitas["contacto"] = 100

total_visitas2 = sum(visitas.values())

total_visitas = visitas["inicio"] + visitas["productos"] + visitas["contacto"]

print("Diccionario actualizado:", visitas)
print("Total de visitas:", total_visitas)
print(f"Total de visitas:{total_visitas2}")

# 10 Tienes dos listas de nombres: grupo_1 = ["Ana", "Luis", "Carlos"] y grupo_2 = ["Carlos", "Elena", "Luis"]. 
# Convierte ambas listas a conjuntos y encuentra los nombres que están en ambos grupos.
# Solución
grupo_1 = ["Ana", "Luis", "Carlos"]
grupo_2 = ["Carlos", "Elena", "Luis"]

conjunto_1 = set(grupo_1)
conjunto_2 = set(grupo_2)

nombres_comunes = conjunto_1 & conjunto_2

print("Nombres en ambos grupos:", nombres_comunes)