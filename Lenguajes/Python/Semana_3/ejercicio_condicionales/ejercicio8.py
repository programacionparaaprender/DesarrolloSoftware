#8. Clasificación del IMC (Índice de Masa Corporal)
#Diseña un programa que clasifique el IMC de una persona, dado su valor ya calculado. Utiliza los siguientes rangos:
#"Bajo peso" si el IMC es menor a 18.5,
#"Normal" si está entre 18.5 y 24.9,
#"Sobrepeso" si está entre 25 y 29.9,
#"Obesidad" si es 30 o más.
#El IMC se calcula con la fórmula: IMC = peso (kg) / (altura (m))², aunque en este ejercicio se asume que el valor ya está disponible.
#Solución
# Solicita al usuario que ingrese el valor del IMC ya calculado
imc = float(input("Ingrese el valor del IMC: "))

# Clasifica el IMC según los rangos establecidos
if imc < 18.5:
    print("Bajo peso")
elif 18.5 <= imc <= 24.9:
    print("Normal")
elif 25 <= imc <= 29.9:
    print("Sobrepeso")
else:
    print("Obesidad")