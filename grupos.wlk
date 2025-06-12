import gladiadores.*

class Grupo {
    var nombre 
    const property cantidadPeleas

    const gladiadores = #{}

    method agregarGladiador(gladiador) {
      gladiadores.add(gladiador)
    }

    method quitarGladiador(gladiador) {
      gladiadores.remove(gladiador)
    }

    method campeonDeGrupo() {
        return gladiadores.max({g => g.vida()})
    }

    method nombreDeGrupo() {
      if (gladiadores.first().tipo() == "Mirmillon") {
        nombre = "Mirmillolandia"
      } else {
        nombre = "D" + gladiadores.last().poderDeAtaque().toString()
      }
    }
        
}