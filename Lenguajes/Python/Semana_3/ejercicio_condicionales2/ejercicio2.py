#2 2. **Clasificación por edad desde un diccionario**
#Una persona tiene sus datos personales guardados en un diccionario con dos claves: `"nombre"` y `"edad"`. 
# Por ejemplo: `{"nombre": "Ana", "edad": 65}`. Escribe un programa que indique si esa persona es “Menor de edad” 
# si tiene menos de 18 años, “Adulto” si tiene entre 18 y 59, o “Adulto mayor” si tiene 60 años o más
persona = {"nombre": "Ana", "edad": 65}
if(persona.get("edad") < 18):
    print("Menor de edad")
elif(18<=persona.get("edad")<=59):
    print("Adulto")
elif(persona.get("edad")>60):
    print("Adulto mayor")
