#8. Clase RegistroDeActividad – Salud y Ejercicio
# Crea una clase `RegistroDeActividad` que guarde: `tipo de actividad` (como “correr”), 
# `duración en minutos y calorías quemadas`.
# Agrega un método que calcule **cuántas calorías se quemaron por minuto**.
# 📌 **Fórmula:**
# Calorías por minuto = calorías quemadas ÷ duración

class RegistroDeActividad:
    def __init__(self, tipo_actividad, duracion, calorias):
        self.tipo_actividad = tipo_actividad
        self.duracion = duracion
        self.calorias = calorias
        self.calorias_por_minuto = calorias / duracion
registro1 = RegistroDeActividad("correr", 30, 20)
print(f"actividad {registro1.tipo_actividad} - calorias por minuto {registro1.calorias_por_minuto}")