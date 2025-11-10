# 2.Análisis térmico para registros climáticos
#Crea un programa que reciba una temperatura (en grados Celsius) y determine la categoría climática:
#"Frío" si la temperatura es menor a 10 °C,
#"Templado" si está entre 10 °C y 25 °C inclusive,
#"Caluroso" si es mayor a 25 °C.
#Solución
# Solicita al usuario que ingrese la temperatura en grados Celsius
temperatura = float(input("Ingrese la temperatura en grados Celsius: "))

# Verifica si la temperatura corresponde a la categoría "Frío"
if temperatura < 10:
    print("La categoría climática es: Frío")
# Verifica si la temperatura corresponde a la categoría "Templado"
elif 10 <= temperatura <= 25:
    print("La categoría climática es: Templado")
# Si no cumple ninguna de las anteriores, es "Caluroso"
else:
    print("La categoría climática es: Caluroso")