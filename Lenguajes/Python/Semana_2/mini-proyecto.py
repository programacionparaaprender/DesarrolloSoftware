estudiantes = []
estudiante = {
    "nombre":"Manuel",
    "edad": 30,
    "materias":["Matemáticas", "Lenguaje", "Ciencias"],
    "notas": [8.0, 10, 10],
    "promedio":[7, 10, 10],
    "activo":True
}

agregar = True
print ("ingresa datos del estudiante")
nombre = str(input("ingrese nombre del estudiante:"))
edad = int(input("ingrese edad"))
eleccion = str(input("esta activo el estudiante (S/N)?:"))
if(eleccion=='S'):
    activo = True
else: 
    activo = False
estudiante1 = {
    "nombre":nombre,
    "edad": edad,
    "materias":["Matemáticas", "Lenguaje", "Ciencias"],
    "notas": [8.0, 10, 10],
    "promedio":[7, 10, 10],
    "activo":activo
}
print(f"estudiante es {estudiante1['nombre']}")
print("Datos del estudiante:")
print("Nombre:", estudiante1["nombre"])
print("Edad:", estudiante1["edad"])
print("Promedio:", estudiante1["promedio"])
print("¿Está activo?:", estudiante1["activo"])
print("\nMaterias del estudiante:")
print("Primera materia:", estudiante1["materias"][0])
print("Última nota registrada:", estudiante1["notas"][-1])
