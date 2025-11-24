#3. Datos Meteorológicos
#    Crea una clase `DatoClimatico` con atributos `fecha` y `temperatura`. Luego crea subclases `DatoEstacion` y 
# `DatoSensorRemoto`. 
#    Cada una debe tener un método `procesar()` que calcule la **temperatura en Fahrenheit** si está en Celsius.   
#    **Fórmula:** F= $(C \times \frac{9}{5}) + 32$

class DatoClimatico:
    def __init__(self, fecha, temperatura):
        self.fecha = fecha 
        self.temperatura = temperatura

class DatoEstacion(DatoClimatico):
    def __init__(self, fecha, temperatura,unidad="C"):
        super().__init__(fecha, temperatura)
        self.unidad = unidad.upper()

    def procesar(self):
        """Convierte la temperatura a Fahrenheit si está en Celsius."""
        if self.unidad == "C":
            fahrenheit = (self.temperatura * 9/5) + 32
            return f"{self.temperatura}°C equivalen a {fahrenheit}°F"
        else:
            return "La temperatura no está en Celsius, no se convierte."

        

class DatoSensorRemoto(DatoClimatico):
    def __init__(self, fecha, temperatura,unidad="C"):
        super().__init__(fecha, temperatura)
        self.unidad = unidad.upper()

    def procesar(self):
        """Convierte la temperatura a Fahrenheit si está en Celsius."""
        if self.unidad == "C":
            fahrenheit = (self.temperatura * 9/5) + 32
            return f"{self.temperatura}°C equivalen a {fahrenheit}°F"
        else:
            return "La temperatura no está en Celsius, no se convierte."
# Ejemplo de uso
t = DatoEstacion("10/11/2025", 25)
print(t.procesar())   # 25°C equivalen a 77.0°F
t2 = DatoSensorRemoto("10/11/2025", 21)
print(t2.procesar())   