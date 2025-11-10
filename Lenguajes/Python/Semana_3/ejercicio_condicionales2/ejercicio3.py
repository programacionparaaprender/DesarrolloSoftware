#3. 3. **Verificación de color disponible con conjuntos**
# Tienes un conjunto llamado `colores_disponibles` que contiene los colores primarios disponibles en una tienda, 
# por ejemplo: `{"rojo", "azul", "verde"}`. Crea un programa que determine si el color “amarillo” está o no en ese 
# conjunto. El resultado debe ser un mensaje que indique si el color está “Disponible” o “No disponible”.
colores_disponibles = {"rojo", "azul", "verde"}

if ("Amarillo" in colores_disponibles):
    print("Color amarillo esta disponible")
else:
    print("Color amarillo no esta disponible")
