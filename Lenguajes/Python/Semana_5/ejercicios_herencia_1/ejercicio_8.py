#8. Clientes y Segmentación
#   Crea una clase `Cliente` con atributos `nombre`, `edad`, y `gasto_mensual`.
#    Luego crea una subclase `ClienteSegmentado` que tenga un método `segmentar()` que devuelva el segmento del 
# cliente según su gasto:
#    - Bajo: gasto < 100
#    - Medio: 100 ≤ gasto < 500
#    - Alto: gasto ≥ 500
#    Este método debe retornar una cadena indicando el segmento.

class Cliente:
    def __init__(self, nombre, edad, gasto_mensual):
        self.nombre = nombre
        self.edad = edad
        self.gasto_mensual = gasto_mensual

class ClienteSegmentado(Cliente):
    def segmentar() -> str:
        return ""
