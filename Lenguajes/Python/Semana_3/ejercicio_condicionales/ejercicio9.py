#9. Detección de valores atípicos en datos numéricos
#Crea un programa que reciba un valor numérico y determine si es atípico. Se considera:
#"Valor esperado" si el número está entre 10 y 100 inclusive,
#"Valor atípico" si está fuera de ese rango.
#Solución
# Solicita al usuario que ingrese un valor numérico
valor = float(input("Ingrese un valor numérico: "))

# Determina si el valor es esperado o atípico según el rango dado
if 10 <= valor <= 100:
    print("Valor esperado")
else:
    print("Valor atípico")