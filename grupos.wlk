import gladiadores.*

class Grupos {
    const property nombre
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
        
}