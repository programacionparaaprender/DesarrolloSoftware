#10. Clase Encuesta – Recopilación de Opiniones
# Crea una clase `Encuesta` con una pregunta y una lista vacía de respuestas.
# Agrega un método que permita **agregar una nueva respuesta** a esa lista.
# 📌 **Pista:** Usa una lista para almacenar las respuestas y un método que las añada.
class Encuesta:
    def __init__(self, pregunta, respuesta):
        self.pregunta = pregunta
        self.respuesta = respuesta
class ListaEncuesta:
    def __init__(self, lista_encuesta=[]):
        self.lista_encuesta = lista_encuesta 
    def anadir_encuesta(self, encuesta):
        self.lista_encuesta.append(encuesta)
lista_encuesta = ListaEncuesta()
encuesta1 = Encuesta("¿Quien escribio la Ilíada?", ["La escribio Homero"])
lista_encuesta.anadir_encuesta(encuesta1)

for encuesta in lista_encuesta.lista_encuesta:
    print(f"encuesta pregunta {encuesta.pregunta} - respuesta {encuesta.respuesta}")
