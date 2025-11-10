


## listas
print ('lista')
lista = ['hola']
# Crear una lista
frutas = ["manzana", "banana", "cereza"]

# Acceso
print(frutas[0])  # manzana

# Modificación
frutas.append("naranja")   # Agregar elemento
frutas[1] = "plátano"      # Cambiar valor

# Eliminación
frutas.remove("cereza")

# Recorrer
for fruta in frutas:
    print(fruta)

## tuplas
print ('tuplas')
tuplas = ('hola')
# Crear una tupla
coordenadas = (10.5, 20.3)

# Acceso
print(coordenadas[0])  # 10.5

# Recorrer
for valor in coordenadas:
    print(valor)

# No se puede modificar
# coordenadas[0] = 15.0  ❌ Esto generaría un error

## diccionarios
print ('diccionario')
diccionario = {'ejemplo':'explicación para que se entienda una información'}
# Crear un diccionario
persona = {
    "nombre": "Luis",
    "edad": 30,
    "ciudad": "Lima"
}

# Acceso
print(persona["nombre"])  # Luis
print(persona.get("es_casado", "No existe es casado"))  # Luis
print(persona.keys())
print(persona.values())
print(persona.items())
# Modificación
persona["edad"] = 31
persona["profesion"] = "Ingeniero"

# Eliminación
del persona["ciudad"]

# Recorrer
for clave, valor in persona.items():
    print(f"{clave}: {valor}")

## conjuntos
conjuntos = {}
print ('conjuntos')
# Crear un conjunto
numeros = {1, 2, 3, 3, 2, 1}

print(numeros)  # {1, 2, 3} (los duplicados se eliminan)

# Agregar y eliminar
numeros.add(4)
numeros.remove(2)

# Operaciones de conjuntos
pares = {2, 4, 6}
impares = {1, 3, 5}

union = pares | impares
interseccion = pares & numeros

print("Unión:", union)
print("Intersección:", interseccion)


