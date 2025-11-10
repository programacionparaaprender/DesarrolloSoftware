#8. Una empresa mantiene una lista de países restringidos en un conjunto llamado paises_restringidos, por ejemplo: 
# {"Irán", "Corea del Norte", "Siria"}. Crea un programa que verifique si el país “Colombia” está dentro del conjunto. 
# Si lo está, debe mostrarse el mensaje “Acceso denegado”; de lo contrario, “Acceso permitido”.
conjunto = {"Irán", "Corea del Norte", "Siria"}

if "Colombia" in conjunto:
    print("Colombia esta en el conjunto")
else:
    print("Colombia no esta en el conjunto")
