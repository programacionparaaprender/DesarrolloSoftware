#9. Clase TemperaturaDiaria – Promedio Climático
#    Crea una clase que represente la temperatura de un día. Debe tener la temperatura máxima, mínima y la fecha.
#    Agrega un método que calcule la **temperatura promedio del día**.
#    📌 **Fórmula:**   
#    Temperatura promedio = (temperatura máxima + temperatura mínima) ÷ 2
class TemperaturaDiaria:
    def __init__(self, temperatura_maxima, temperatura_minima):
        self.temperatura_maxima = temperatura_maxima
        self.temperatura_minima = temperatura_minima
        self.temperatura_promedio = (temperatura_maxima + temperatura_minima) / 2

temperatura1 = TemperaturaDiaria(30, 10)
print(f"temperatura max {temperatura1.temperatura_maxima} - min {temperatura1.temperatura_minima} - promedio: {temperatura1.temperatura_promedio}")


