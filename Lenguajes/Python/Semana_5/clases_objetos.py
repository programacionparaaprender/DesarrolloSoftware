#Clase celular
class Celular:
    def __init__(self, marca="IPhone", modelo="11"):
        self.marca = marca
        self.modelo = modelo
    def mostrar(self):
        print(f"Marca: {self.marca}")
    def mostrar2(cls):
        print(f"Marca: {cls.marca}")
celular = Celular()
celular.mostrar()
celular.mostrar2()

celular2 = Celular("Samsung","A51")
celular2.mostrar()
celular2.mostrar2()
