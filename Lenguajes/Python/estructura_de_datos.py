
#1 Crea una lista con 3 números enteros, [3,6,1], y calcula la suma de todos los elementos. El resultado es de 10.

lista = [3, 6, 1]
suma = lista[0] + lista[1] + lista[2]
print(f"La suma es de: {suma}")

suma_2 = sum(lista)
print(f"La suma es de: {suma_2}")

#2 Crea una lista de números enteros del 1 al 20, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]. 
# Luego, muestra los números pares utilizando rebanado e inviértelo. El resultado es [20, 18, 16, 14, 12, 10, 8, 6, 4, 2].
lista = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

lista_numeros_pares = lista[1::2]
lista_invertida = lista_numeros_pares[::-1]
print(lista_invertida)

#3 Cree una lista de productos vacío donde un producto tiene un nombre, stock, y precio unitario, 
# {'nombre': '', 'stock': 0, 'precio_unitario': 0.0}. Utilizando las propiedades de la lista y diccionario, 
# agregue 4 productos, elimine el segundo y actualicé el precio unitario del último producto del listado 
# modificado.
#Solución
lista_productos = []

producto_1 = {'nombre': 'Hoja', 'stock': 12, 'precio_unitario': 0.1}
producto_2 = {'nombre': 'Lapiz', 'stock': 10, 'precio_unitario': 2.0}
producto_3 = {'nombre': 'Borrador', 'stock': 5, 'precio_unitario': 1.5}
producto_4 = {'nombre': 'Tajador', 'stock': 2, 'precio_unitario': 2.5}

lista_productos.append(producto_1)
lista_productos.append(producto_2)
lista_productos.append(producto_3)
lista_productos.append(producto_4)
print(lista_productos)
lista_productos.pop(1)
print(lista_productos)
lista_productos[-1]['precio_unitario'] = 1.0
print(lista_productos)

# 4 Crea una tupla con tres números flotantes, (3.14, 2.71, 1.61), y calcula la suma de sus elementos. 
# El resultado es de 7.46.
# Solución
tupla = (3.14, 2.71, 1.61)
suma = tupla[0] + tupla[1] + tupla[2]
print(f"La suma es de: {suma}")

suma_2 = sum(tupla)
print(f"La suma es de: {suma_2}")

#5 Crea una tupla con cinco valores booleanos, (True, False, True, False, True), y cuenta cuántos de ellos son 
# verdaderos. El resultado es 3.
#Solución
tupla = (True, False, True, False, True)

contar_true = tupla.count(True)
print(f"El resultado es: {contar_true}")

#6Cree un diccionario que represente a una empresa, con claves como nombre, teléfono y sitio web. Luego, muestre 
# en la consola la información de contacto de la empresa, como el siguiente mensaje "Para obtener más información 
# en {nombre}, visite nuestro sitio web en {sitio web} o llámenos al {teléfono}"
#Solución
empresa = {'nombre': 'UNMSM', 'telefono': '+51 976483284',
            'sitio_web': 'http://www.unmsm.com'}

print(f"Para obtener más información en {empresa['nombre']}, visite nuestro sitio web en {empresa['sitio_web']} o llámenos al {empresa['telefono']}")

#7 Crea un diccionario que contenga los nombres de los planetas y sus respectivos tamaños, 
# {"Mercurio": "Pequeño","Venus": "Mediano","Tierra": "Mediano","Marte": "Pequeño","Jupiter": "Grande",
# "Saturno": "Grande","Urano": "Grande","Neptuno": "Grande"}. Muestra la lista de planetas,keys(), 
# y también la lista de tamaños usando la función,values().
#Solución
diccionario =  {"Mercurio": "Pequeño","Venus": "Mediano","Tierra": "Mediano","Marte": "Pequeño","Jupiter": "Grande","Saturno": "Grande","Urano": "Grande","Neptuno": "Grande"}

print(list(diccionario.keys()))
print(list(set(list(diccionario.values()))))


#8 Crea un diccionario que contenga los nombres de los días de la semana y sus respectivos números, 
# {"Lunes": 1,"Martes": 2,"Miércoles": 3,"Jueves": 4,"Viernes": 5,"Sábado": 6,"Domingo": 7}. 
# Muestra el diccionario usando la función items().
# Solución
diccionario = {"Lunes": 1,"Martes": 2,"Miércoles": 3,"Jueves": 4,"Viernes": 5,"Sábado": 6,"Domingo": 7}

print(diccionario.items())

#9 Crea dos conjuntos, uno con números pares, {2, 4, 6, 8, 10}, y otro con números impares, {1, 3, 5, 7, 9}, y 
# encuentra la diferencia simétrica entre ambos conjuntos. Formula: (Pares - Impares) ∪ (Impares - Pares). 
# El resultado es {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}.
# Solución
conjunto_pares = {2, 4, 6, 8, 10}
conjunto_impares = {1, 3, 5, 7, 9}

a = conjunto_pares - conjunto_impares
b = conjunto_impares - conjunto_pares
diferencia_simetrica = a | b
print(diferencia_simetrica)

print(conjunto_pares ^ conjunto_impares)

#10 Crea un conjunto con nombres de colores, {"Rojo", "Verde", "Azul", "Amarillo", "Naranja"}, y otro con 
# nombres de frutas, {"Manzana", "Plátano", "Naranja", "Pera", "Uva"}. Encuentra los elementos que están en 
# ambos conjuntos. El resultado es {'Naranja'}.
# Solución
colores = {"Rojo", "Verde", "Azul", "Amarillo", "Naranja"}
frutas = {"Manzana", "Plátano", "Naranja", "Pera", "Uva"}

interseccion = colores.intersection(frutas)

interseccion2 = colores & frutas

print(interseccion)
print(interseccion2)