#4. **Cálculo y clasificación del IMC con tuplas**
#Un paciente tiene sus datos de peso y altura almacenados en una tupla, por ejemplo: `(70, 1.75)`, 
# donde el primer valor representa el peso en kilogramos y el segundo la altura en metros. Usando la fórmula del IMC: 
# `peso / (altura ** 2)`, determina si el paciente tiene “Bajo peso” (IMC menor a 18.5), “Normal” (entre 18.5 y 24.9), 
# “Sobrepeso” (entre 25 y 29.9) u “Obesidad” (30 o más).

datos = (80, 1.8)
peso = datos[0]
altura = datos[1]
IMC = peso / (altura ** 2)
if(IMC < 18.5):
    print(f"Normal {IMC}")
elif(18.5 <= IMC <= 24.9):
    print(f"Normal {IMC}")
elif(25 <= IMC <= 29.9):
    print(f"Obesidad {IMC}")


