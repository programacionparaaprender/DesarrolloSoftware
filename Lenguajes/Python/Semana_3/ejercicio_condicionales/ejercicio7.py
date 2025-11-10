#7. Comparación de ingresos personales
#Escribe un programa que reciba dos ingresos mensuales y compare los valores:
#Si uno es mayor que el otro, debe indicarse quién tiene mayor ingreso,
#Si ambos son iguales, debe indicarse igualdad de ingresos.
#Solución
# Solicita al usuario que ingrese los dos ingresos mensuales
ingreso1 = float(input("Ingrese el primer ingreso mensual: "))
ingreso2 = float(input("Ingrese el segundo ingreso mensual: "))

# Compara los ingresos e imprime el resultado correspondiente
if ingreso1 > ingreso2:
    print("El primer ingreso es mayor que el segundo.")
elif ingreso2 > ingreso1:
    print("El segundo ingreso es mayor que el primero.")
else:
    print("Ambos ingresos son iguales.")