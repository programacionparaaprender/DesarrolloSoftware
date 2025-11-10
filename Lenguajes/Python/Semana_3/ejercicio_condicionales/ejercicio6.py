#6.Clasificación de niveles de presión arterial
#Elabora un programa que reciba un valor de presión arterial sistólica (en mmHg) y lo clasifique como:
#"Normal" si es menor a 120,
#"Elevado" si está entre 120 y 139 inclusive,
#"Hipertensión" si es mayor o igual a 140.
#Solución
# Solicita al usuario que ingrese la presión arterial sistólica en mmHg
presion = int(input("Ingrese la presión arterial sistólica (mmHg): "))

# Clasifica la presión arterial según el valor ingresado
if presion < 120:
    print("Normal")
elif 120 <= presion <= 139:
    print("Elevado")
else:
    print("Hipertensión")