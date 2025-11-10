# 2. **Encuesta de calificaciones**
# Pide al usuario ingresar las calificaciones de 5 estudiantes. Almacena estas calificaciones en una lista. 
# Luego, calcula el promedio. Después, muestra cuántos estudiantes obtuvieron una nota mayor o igual al promedio.

calificaciones = []
cantidad_sobrepromedio = 0
""" for i in range(5):
    calificacion = int(input(f"Ingrese la calificación #{i+1}: "))
    calificaciones.append(calificacion) """
calificaciones = [20,21,22,23,24]

promedio = (calificaciones[0]+calificaciones[1]+calificaciones[2]+calificaciones[3]+calificaciones[4])/5
for calificacion in calificaciones:
    if(calificacion >= promedio):
        cantidad_sobrepromedio+=1
print(f"Cantidad de estudiantes sobre el promedio: {cantidad_sobrepromedio}")