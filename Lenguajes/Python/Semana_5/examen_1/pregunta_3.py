#3. **Conversor de temperatura**
#    Define una función `convertir(valor)` que reciba una temperatura en **Celsius** y retorne su equivalente en **Fahrenheit**.   
#    > 📐 **Fórmula**:
#    > 
#    > - Celsius a Fahrenheit:
#    >     
#    >     `F = (C × 9/5) + 32`
#    >         
#    **Datos de entrada:**
#    ```python
#    valor = 25
#    ```   
#    **Salida esperada:**
#    ```python
#    25 °C equivalen a 77.0 °F
#    ```

def convertir(c):
    f = c * (9/5) + 32
    return f
if __name__ == "__main__":
    valor = 25
    salida = convertir(valor)
    print(f"{valor} °C equivalen a {salida} °F")