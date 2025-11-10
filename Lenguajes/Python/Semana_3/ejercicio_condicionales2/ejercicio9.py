#9 9. **Cálculo de tarifa de envío según peso**
#Un paquete enviado por correo tiene su peso registrado en una tupla, por ejemplo: `("Orden #1", 3.5)`, 
# donde el primer valor es una referencia del pedido y el segundo su peso en kilogramos. Según el peso, 
# calcula la tarifa de envío aplicando las siguientes condiciones: si el peso es menor o igual a 2 kg, el costo es de $5; 
# si está entre 2 y 5 kg, el costo es de $8; y si es mayor a 5 kg, el costo es de $12. Muestra el costo correspondiente.

tupla = ("Orden #1", 3.5)
costo = 0
if(tupla[1] <= 2):
    costo = 5
elif(2 <= tupla[1] <= 5):
    costo = 8
elif(tupla[5] > 5):
    costo = 12
print(f"el costo es: {costo}")