import armas.*
import armaduras.*
class Mirmillones {
    var vida = 100
    method vida() = vida
    const property arma
    const property armadura
    const property fuerza
    method destreza() = 15 
    method defensa() = armadura.puntosDefensa(self) + self.destreza()

    method poderDeAtaque() = arma.valorDeAtaque() + fuerza

    method atacar(gladiador) {
        gladiador.recibirDaño(self.poderDeAtaque() - gladiador.defensa())
        gladiador.atacar(self)
    }

    method recibirDaño(cantidad) {
        vida = vida - 1
    }
}

class Dimachaerus {
    var vida = 100
    method vida() = vida
    const property armas = #{}
    method fuerza() = 10
    var property destreza
    method defensa() = destreza / 2

    method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})

    method atacar(gladiador) {
      gladiador.recibirDaño(self.poderDeAtaque() - gladiador.defensa())
      destreza += 1
      gladiador.atacar(self)
    }
}

