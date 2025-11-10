# 10. **Clasificación del monto de gasto**
# En una app de control de gastos, un usuario ha registrado una compra en un diccionario con dos claves: `"categoría"` y 
# `"monto"`. Por ejemplo: `{"categoría": "alimentación", "monto": 120}`. Crea un programa que clasifique el gasto como “Bajo” 
# si es menor a $50, “Medio” si es entre $50 y $150, y “Alto” si es mayor a $150.
clasificacion = {"categoría": "alimentación", "monto": 120}
if(clasificacion.get("monto")<50):
    print("Bajo")
elif(50<=clasificacion.get("monto")<150):
    print("Medio")
elif(clasificacion.get("monto")>150):
    print("Alto")
    