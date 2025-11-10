#4.Control de calidad en datos económicos
#Diseña un programa que reciba un valor numérico (por ejemplo, un ingreso o dato censal) y evalúe si:
#El dato es "Válido" si es mayor que 0,
#El dato es "Ausente o inválido" si es igual o menor a 0.
#Solución
# Solicita al usuario que ingrese un valor numérico
dato = float(input("Ingrese un valor numérico: "))

# Evalúa si el dato es válido o ausente/inválido
if dato > 0:
    print("Válido")
else:
    print("Ausente o inválido")