#2. **Juego de comparación de contraseñas**
# Crea un programa que simule un inicio de sesión sencillo. Debe hacer lo siguiente:
#  - El programa tendrá guardada una **contraseña secreta** en una variable (por ejemplo: `"python123"`).
#  - Pedir al usuario que ingrese una contraseña.
#  - Mientras la contraseña ingresada **no sea igual** a la contraseña secreta, mostrar un mensaje indicando que es incorrecta y solicitarla nuevamente.
#   - Cuando el usuario ingrese la contraseña correcta, mostrar un mensaje de bienvenida junto con la cantidad de intentos usados.
#    > 💡 Conceptos a usar:
#    > 
#    > - Variables
#    > - `while`
#    > - Comparación de cadenas
#    > - Contador de intentos   
#    **Datos de entrada:**   
#    Suponiendo que la contraseña secreta es: `python123`   
#    ```python
#    Intento 1: hola
#    Intento 2: python
#    Intento 3: python123
#    ```    
#    **Salida esperada:**    
#    ```python
#    Ingresa la contraseña:
#    hola
#    Contraseña incorrecta. Intenta de nuevo.
#    python
#    Contraseña incorrecta. Intenta de nuevo.
#    python123
#    ¡Acceso concedido!  
#    Número de intentos realizados: 3
#    ```
clave_secreta = "python123"
intentos = 0
# Ejemplo de uso
if __name__ == "__main__":
    while True:
        intentos += 1
        clave = str(input("ingrese una contraseña: \n"))
        if(clave == clave_secreta):
            print(f"¡Acceso concedido!  ")
            print(f"Número de intentos realizados: {intentos}")
            break
        else:
            print(f"Contraseña incorrecta. Intenta de nuevo.")
