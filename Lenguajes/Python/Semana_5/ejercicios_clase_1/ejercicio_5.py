#5. Clase Libro – Clasificación por Número de Páginas
#   Crea una clase `Libro` con los siguientes datos: `título, autor y número de páginas`.
#  Agrega un método que indique si el libro es **corto** (menos de 100 páginas) o **largo** (100 páginas o más).
#  📌 **Lógica:**
#  Si el número de páginas < 100 → "corto"
#  Si no → "largo"

class Libro:
    def __init__(self, titulo, autor, n_paginas):
        self.titulo = titulo 
        self.autor = autor
        self.n_paginas = n_paginas
        if(n_paginas < 100):
            self.tamanio = "corto"
        else:
            self.tamanio = "largo"
libro1 = Libro("Titulo 1", "Autor 1", 150)
print(f"libro {libro1.autor} - tamaño: {libro1.tamanio}")
