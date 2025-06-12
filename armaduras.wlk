class Casco {
    method puntosDefensa(luchador) = 10 
}

class Escudo {
    method puntosDefensa(luchador) = 5 + ((luchador.destreza() * 10 ) / 100)
}