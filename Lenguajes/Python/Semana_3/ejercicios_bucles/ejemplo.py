clasificacion = [{"categoría": "alimentación", "monto": 120}, {"categoría": "materiales", "monto": 100}]
clasificacion = {"categoría": "alimentación", "monto": 120}
for clasifi in clasificacion.items():
    print(clasifi)

for clasifi in clasificacion.keys():
    print(clasifi)

for clasifi in clasificacion.values():
    print(clasifi)