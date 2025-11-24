#7. Análisis de Redes Sociales
#    Crea una clase `Publicacion` con atributos `autor`, `fecha`, y `contenido`.
#    Luego crea una subclase `Tweet` que agregue un atributo `likes` y `retweets`.
#    Agrega un método `impacto()` que calcule el **impacto total de un tweet** como:
#    $Impacto = \text{likes} + 2 \times \text{retweets}$   
#    El peso del retweet es doble porque implica mayor difusión.

class Publicacion:
    def __init__(self, autor, fecha, contenido):
        self.autor = autor
        self.fecha = fecha 
        self.contenido = contenido

class Tweet(Publicacion):
    def __init__(self, autor, fecha, contenido, likes, retweets):
        super().__init__(autor, fecha, contenido)
        self.likes = likes
        self.retweets = retweets
    def impacto(self):
        return self.likes + 2 * self.retweets
    
tweet1 = Tweet("Alberto", "10/10/2025", "Mi contenido", 20, 40)
print(f"autor {tweet1.autor} impacto {tweet1.impacto()}")


