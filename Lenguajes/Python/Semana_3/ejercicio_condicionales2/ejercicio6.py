#6. En una aplicación meteorológica, las temperaturas de distintas ciudades están almacenadas en un diccionario como 
# este: {"Lima": 22, "Arequipa": 15}. Crea un programa que, tomando el valor de temperatura de la ciudad de Arequipa, 
# determine si hace “Frío” (menos de 18°C), “Templado” (entre 18°C y 24°C) o “Calor” (25°C o más).
temperaturas = {"Lima": 22, "Arequipa": 15}

if(temperaturas.get("Arequipa") < 18):
    print("Hace frio")
elif(18 <= temperaturas.get("Arequipa") <= 24):
    print("Templado")
elif(temperaturas.get("Arequipa") > 25):
    print("Calor")
