#1. Conversión de divisas con tasa fija
#Un usuario tiene una cantidad en dólares y se desea convertir a soles usando un tipo de cambio fijo. Luego, calcula cuánto 
# dinero tendría si paga una comisión del 5%.
#Fórmulas:
#Conversión a soles: soles = dólares x tipo_de_cambio
#Aplicar comisión: monto_final = Soles - (Soles x 0.05)
#Entrada:
dolares = 150
tipo_de_cambio = 3.75
soles = dolares * tipo_de_cambio
monto_final = soles - (soles * 0.05)
print(monto_final)