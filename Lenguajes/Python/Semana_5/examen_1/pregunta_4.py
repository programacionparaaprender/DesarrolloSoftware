#4. **Cálculo de área de un rectángulo**
#    Crea una clase `Rectangulo` con:   
#    - Atributos: `base` y `altura`
#    - Método: `calcular_area()` que retorna `base * altura`
#    Luego crea un objeto con valores ingresados por el usuario y muestra el área.   
#    **Datos de entrada:**   
#    ```python
#    base = 4
#    altura = 7
#    ```   
#    **Salida esperada:**
#    ```python
#    Área del rectángulo: 28
#    ```

def calcular_area(base, altura):
    area = base * altura
    return area
if __name__ == "__main__":
    base = 4
    altura = 7
    base = int(input("ingrese base:\n"))
    altura = int(input("ingrese altura:\n"))
    area = calcular_area(base, altura)
    print(f"Área del rectángulo: {area}")
