
lista_numeros = [1,2,3,4,5,6,7,8]

def elevar_cuadrado(elemento):
    return elemento ** 2
resultado = list(map(elevar_cuadrado, lista_numeros))
resultado2 = list(map(lambda elemento:elemento ** 2, lista_numeros))
lista_pares = list(filter(lambda elemento:elemento % 2 == 0, lista_numeros))

print(resultado)
print(resultado2)
print(lista_pares)