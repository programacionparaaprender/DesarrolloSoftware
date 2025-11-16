#Validador Avanzado de Contraseñas
#Escribe una función validar_contraseña(password) que evalúe si una contraseña cumple con reglas de seguridad: debe tener al menos 
# ocho caracteres, incluir una letra mayúscula, una minúscula y un número. Si no cumple alguna regla, la función debe devolver una 
# lista detallando los errores; si cumple todas, debe retornar el mensaje “Contraseña segura”.
#Entrada: 
#"abc"
#"Abcdefg1"
#"password123"
#"PASSWORD123"

def validar_contraseña(password):
    error = []
    if(len(password) < 8):
        error.append("Menos de ocho digitos")
    if not any(c.isupper() for c in password):
        error.append("Debe tener una letra mayuscula")
    if not any(c.islower() for c in password):
        error.append("Debe tener una letra minuscula")
    if not any(c.isdigit() for c in password):
        error.append("Debe tener al menos un número")
    if(len(error) == 0):
        return ["Contraseña segura"]
    return error
print(f"{validar_contraseña('abc')}")
print(f"{validar_contraseña('Abcdefg1')}")
print(f"{validar_contraseña('password123')}")
print(f"{validar_contraseña('PASSWORD123')}")
