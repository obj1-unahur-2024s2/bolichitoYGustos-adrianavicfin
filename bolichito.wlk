import objetos.*
import personas.*

object bolichito {

    var objetoEnVidriera = pelota
    var objetoEnMostrador = munieco

    method objetoEnVidriera(unObjetoEnVidriera) {
        objetoEnVidriera = unObjetoEnVidriera
    }

    method objetoEnMostrador(unObjetoEnMostrador) {
        objetoEnMostrador = unObjetoEnMostrador
    }

    method objetoEnVidriera() {
        return objetoEnVidriera
    }

    method objetoEnMostrador() {
        return objetoEnMostrador
    }

    method esBrillante() {
        return objetoEnMostrador.esBrillante() &&
               objetoEnVidriera.esBrillante()
    }

    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tiendeObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor ||
               objetoEnVidriera.color() == unColor
    }

    method sePuedeMejorar() {
        return not self.esMonocromatico() || self.estaEquilibrado()
    }

    method puedoOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) ||
               unaPersona.leGusta(objetoEnVidriera)
    }

}