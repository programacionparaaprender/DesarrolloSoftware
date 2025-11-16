#5. **Contar valores faltantes en datos de sensores**
#    Supón que tienes una lista con lecturas de un sensor que a veces falla y reporta valores nulos (`None`): 
# `[12, None, 7, None, 15, 20, None]`. Define una función que reciba esta lista y devuelva cuántos valores faltantes (`None`) 
# hay en total, para identificar la calidad de los datos.

lista = [12, None, 7, None, 15, 20, None]
def cantidad_nones(lista):
    contador = 0
    for elemento in lista:
        if(elemento==None): 
            contador+=1
    return contador
print(f"Cantidad de nones {cantidad_nones(lista)}")