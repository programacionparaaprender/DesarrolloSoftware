#5. **Calculadora de promedios**
#    Crea un programa que pida al usuario **3 notas** (valores entre 0 y 20).   
#    Debe:   
#    1. Guardar las notas en una lista.
#    2. Calcular el **promedio**.
#    3. Mostrar si el estudiante **aprueba** o **desaprueba**.
#    > Considera aprobado si el promedio es **mayor o igual a 11**.
#    >    
#    **Datos de entrada:**
#    ```python
#    nota1 = 15
#    nota2 = 10
#    nota3 = 18
#    ```   
#    **Salida esperada:**   
#    ```python
#    Notas ingresadas: [15, 10, 18]
#    Promedio: 14.33
#    Estado: Aprobado
#    ```
if __name__ == "__main__":
    nota1 = 15
    nota2 = 10
    nota3 = 18

    nota1 = int(input("nota 1: "))
    nota2 = int(input("nota 2: "))
    nota3 = int(input("nota 3: "))

    notas_ingresadas = [nota1, nota2, nota3]
    promedio = 0
    promedio = sum(notas_ingresadas) / len(notas_ingresadas)
    estado = ""
    if(promedio >= 11):
        estado = "Aprobado"
    else:
        estado = "No aprobado"
    print(f"Notas ingresadas: {notas_ingresadas}")
    print(f"Promedio: {promedio}")
    print(f"Estado: {estado}")