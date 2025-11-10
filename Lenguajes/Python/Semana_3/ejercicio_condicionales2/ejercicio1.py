#https://sepia-goldfish-a39.notion.site/Ejercicios-Condicionales-2098a76828a4800899a7c1dd4f0ac4bc
#1 Ejercicios Condicionales  +
#Promedio de notas con clasificación
#Un estudiante tiene registradas sus dos últimas calificaciones en una lista llamada notas, por ejemplo: [78, 85]. 
# Tu tarea es calcular el promedio de esas notas y luego clasificarlo según los siguientes criterios: 
# si el promedio es menor a 60, debe mostrarse “Reprobado”; si está entre 60 y 89, debe mostrarse “Aprobado”; 
# y si es 90 o más, debe mostrarse “Excelente”. Utiliza la fórmula del promedio: (nota1 + nota2) / 2.
#Solución

notas = [78, 85]
promedio = (notas[0] + notas[1]) / 2
if(promedio < 60):
    print("Reprobado")
elif(60<=promedio<=89):
    print("Aprobado")
elif(promedio >= 90):
    print("Excelente")
