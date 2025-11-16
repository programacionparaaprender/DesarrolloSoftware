## con paramtros
def convertir_mayuscula(texto="Perú"):
    resultado = texto.upper()
    return resultado
#print(f"{convertir_mayuscula('texto')}")
#print(f"{convertir_mayuscula()}")

## sin parametros
def generar_menu_retorno():
    string = f"---------------------------------------\n"
    string +=f"--- bienvenido al menu de la consola --\n"
    string +=f"---------------------------------------\n"
    return string
#print(f"{generar_menu_retorno()}")

## con retorno


## sin retorno
def generar_menu():
    print(f"---------------------------------------")
    print(f"--- bienvenido al menu de la consola --")
    print(f"---------------------------------------")
#generar_menu()

bandera = False
def cambiar_bandera(valor):
    global bandera
    bandera = not valor
cambiar_bandera(bandera)
print(bandera)
