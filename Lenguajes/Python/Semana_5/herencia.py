from abc import ABC, abstractmethod
from dataclasses import dataclass
import math

class Figura(ABC):
    """Clase abstracta base para figuras geométricas."""
    
    @abstractmethod
    def area(self) -> float:
        """Devuelve el área de la figura."""
        pass

@dataclass
class Rectangulo(Figura):
    ancho: float
    alto: float

    def __post_init__(self):
        if not (isinstance(self.ancho, (int, float)) and isinstance(self.alto, (int, float))):
            raise TypeError("ancho y alto deben ser números (int o float).")
        if self.ancho < 0 or self.alto < 0:
            raise ValueError("ancho y alto deben ser no negativos.")

    def area(self) -> float:
        """Calcula y devuelve el área del rectángulo."""
        return self.ancho * self.alto

    def __str__(self) -> str:
        return f"Rectángulo(ancho={self.ancho}, alto={self.alto}, área={self.area()})"


@dataclass
class Circulo(Figura):
    def __init__(self, radio: float):
        if not isinstance(radio, (int, float)):
            raise TypeError("El radio debe ser un número (int o float).")
        if radio < 0:
            raise ValueError("El radio no puede ser negativo.")
        self.radio = radio

    def area(self) -> float:
        """Devuelve el área del círculo."""
        return math.pi * (self.radio ** 2)

    def __str__(self) -> str:
        return f"Circulo(radio={self.radio}, área={self.area():.2f})"


# Ejemplos de uso
if __name__ == "__main__":
    r = Rectangulo(3.5, 2)
    print(r)                 # Rectángulo(ancho=3.5, alto=2, área=7.0)
    print("Área:", r.area()) # Área: 7.0

    # Comprobaciones simples
    assert Rectangulo(0, 5).area() == 0
    assert Rectangulo(4, 2.5).area() == 10.0

    c = Circulo(5)
    print(c.area())     # 78.53981633974483
    print(c)            # Circulo(radio=5, área=78.54)

