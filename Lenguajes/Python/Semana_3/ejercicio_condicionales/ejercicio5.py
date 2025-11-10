#5.Desarrolla un programa que, dado un valor de calificación entre 0 y 100, indique:
#"Reprobado" si la nota es menor a 60,
#"Aprobado" si está entre 60 y 79 inclusive,
#"Sobresaliente" si está entre 80 y 100 inclusive.
#Solución
# Solicita al usuario que ingrese una calificación entre 0 y 100
calificacion = float(input("Ingrese la calificación (0 a 100): "))

# Evalúa la calificación e imprime el resultado correspondiente
if calificacion < 60:
    print("Reprobado")
elif 60 <= calificacion <= 79:
    print("Aprobado")
elif 80 <= calificacion <= 100:
    print("Sobresaliente")
else:
    print("Calificación fuera de rango")