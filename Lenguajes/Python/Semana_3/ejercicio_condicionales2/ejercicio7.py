#Una persona tiene sus datos en una lista con el siguiente formato: ["Carlos", 72, True], donde el primer 
# valor es su nombre, el segundo su edad y el tercero indica si tiene una enfermedad crónica (True o False). 
# Determina si esta persona pertenece a un grupo de riesgo. Se considera grupo de riesgo si tiene 65 años o más o si 
# padece una enfermedad crónica.

lista = ["Carlos", 72, True]
if(lista[1] >= 65 and lista[2]):
    print("Pertenece a un grupo de riesgo")