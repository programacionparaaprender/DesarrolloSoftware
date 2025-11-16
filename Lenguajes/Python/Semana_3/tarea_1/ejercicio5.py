#Área total de una figura compuesta
#Una figura está formada por:
#un rectángulo,
#un círculo,
#y un triángulo.
#Todos los valores están guardados en una sola tupla.
#Debes:
#Extraer los valores usando índices
#Calcular el área de cada figura
#Calcular el área total sumando las tres
#Usa 3.1416 para π. Solo operadores matemáticos e indexación.
#Fórmulas:
#area_rectangulo = base_rect × altura_rect
#area_circulo = 3.1416 × radio_circ²
#area_triangulo = base_tri × altura_tri / 2
#area_total = area_rectangulo + area_circulo + area_triangulo
#Entrada:
#Tupla con valores en el orden: (base_rect, altura_rect, radio_circ, base_tri, altura_tri)
#datos = (8.0, 5.0, 3.0, 6.0, 4.0)

datos = (8.0, 5.0, 3.0, 6.0, 4.0)
base_rect = datos[0]
altura_rect = datos[1]
radio_circ = datos[2]
base_tri = datos[3]
altura_tri = datos[4]
area_rectangulo = base_rect * altura_rect
area_circulo = 3.1416 * radio_circ * radio_circ
area_triangulo = base_tri * altura_tri / 2
area_total = area_rectangulo + area_circulo + area_triangulo
print(f"area total: {area_total}")