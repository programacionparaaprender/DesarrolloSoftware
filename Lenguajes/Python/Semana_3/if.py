valor_1 = 10
valor_2 = 30
lista_nombres = ["Luis", "Pedro", "Juan"]
if (valor_1 > valor_2):
    print(f"valor 1 es:{valor_1} es mayor que el valor 2 que es:{valor_2}")
elif(valor_1 == valor_2):
    print(f"valor 1 es:{valor_1} es igual que el valor 2 que es:{valor_2}")
else:
    print(f"valor 1 es:{valor_1} es menor que el valor 2 que es:{valor_2}")
existe_luis = "Luis" in lista_nombres
if (existe_luis):
    print(f"Luis si existe")
mensaje = "Si existe Luis" if existe_luis else "No existe Luis"
print(mensaje)
