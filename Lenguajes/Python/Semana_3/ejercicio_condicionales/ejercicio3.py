#4.Evaluación del rendimiento en ventas
#Escribe un programa que reciba un monto de ventas mensuales y clasifique el rendimiento de un empleado:
#"Bajo rendimiento" si las ventas son menores a $5000,
#"Rendimiento aceptable" si están entre $5000 y $10000 inclusive,
#"Excelente rendimiento" si superan los $10000.
#Solución
# Solicita al usuario que ingrese el monto de ventas mensuales
ventas = float(input("Ingrese el monto de ventas mensuales: "))

# Verifica si el rendimiento es bajo
if ventas < 5000:
    print("Bajo rendimiento")
# Verifica si el rendimiento es aceptable
elif 5000 <= ventas <= 10000:
    print("Rendimiento aceptable")
# Si no cumple ninguna de las anteriores, es excelente rendimiento
else:
    print("Excelente rendimiento")