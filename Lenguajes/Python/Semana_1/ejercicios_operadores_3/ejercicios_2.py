# Calcula el área de un círculo dado su radio. Utilice la fórmula A = πr^2, donde A es el área, π es el número pi (que puede ser obtenido usando la función math.pi en Python) y r con valor 2.5 es el radio del círculo. El resultado es 19.634954084936208
# Solución
import math

PI = math.pi
radius = 2.5
area = PI * (radius ** 2)
print(f"El área es : {area}")