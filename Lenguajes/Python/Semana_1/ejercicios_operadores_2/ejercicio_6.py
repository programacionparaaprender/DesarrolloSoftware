# Un estudiante gastó en transporte las siguientes cantidades durante la semana: 4 soles el lunes, 3.5 el martes, 5 el miércoles, 4.5 el jueves y 3 el viernes. Calcula el gasto promedio diario en transporte sumando todos los montos y dividiendo entre los días.
# Solución
lunes = 4
martes = 3.5
miercoles = 5
jueves = 4.5
viernes = 3

suma_gastos = lunes + martes + miercoles + jueves + viernes
cantidad_dias = 5

promedio_gasto = suma_gastos / cantidad_dias

print(f"El gasto promedio diario en transporte es: {promedio_gasto:.2f} soles")