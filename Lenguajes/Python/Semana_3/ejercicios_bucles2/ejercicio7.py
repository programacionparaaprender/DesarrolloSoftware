#7 7. **Control de intentos con clave secreta**
#El programa debe pedir al usuario una clave secreta. Solo tendrá 3 intentos para ingresarla correctamente. 
# Si falla en los 3 intentos, debe mostrar un mensaje de acceso denegado. Usa un bucle `while` con contador de intentos.

clave_correcta = "123456"
clave = ""
intentos = 0
limite_intentos = 3
while intentos < 3:
    clave = str(input("ingrese su clave: "))
    if(clave == clave_correcta):
        print("clave correcta")
        break
    else:
        intentos+=1
    if(intentos == 3):
        print("cuenta bloqueada")
