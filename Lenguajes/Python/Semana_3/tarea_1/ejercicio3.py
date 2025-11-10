#Extraer datos de un diccionario y hacer cálculo
#Se tiene un diccionario de un trabajador con sueldo, horas_extra y pago_hora_extra.
#Calcular su sueldo final sumando el pago por horas extra.
#Fórmulas:
#Pago extra:  extra = horas_extra × pago_hora_extra
#Sueldo final:  final = sueldo + Extra
#Entrada:
trabajador = {
    "nombre": "Luis",
    "sueldo": 1500,
    "horas_extra": 6,
    "pago_hora_extra": 15
}
extra = trabajador.get("horas_extra") * trabajador.get("pago_hora_extra")
final = trabajador.get("sueldo") + extra
print(f"final: {final}")
