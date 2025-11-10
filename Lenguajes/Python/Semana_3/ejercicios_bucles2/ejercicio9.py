#9. Solicita al usuario una frase. Ignora los espacios y verifica si la frase se lee igual al derecho y al revés 
# (por ejemplo, “anita lava la tina”). Debes construir la frase invertida y compararla con la original usando un bucle 
# for o while.
frase = "anita lava la tina"
invertida = frase[::-1]
iguales = 0
tamanio = len(frase)
for palabra1 in frase:
    for palabra2 in invertida:
        if(palabra1 == palabra2):
            iguales +=1

if(iguales == tamanio):
    print(f"son iguales: {frase} {invertida}")
else:
    print(f"no son iguales: {frase} {invertida}")