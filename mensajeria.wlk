import mensajeros.*

object mensajero {

    var property nombre = "" 
    var property pesoMensajero = 90 
    var property transporte = camion 

    method peso(){
        return pesoMensajero + transporte.peso()
    }
}



object mensajeria {

    var property mensajeros = []


    method contains(mensajero){
        return mensajeros.any({el => el.nombre() == mensajero.nombre()})
    }

    method hayMensajeros(){
        return mensajeros.size() > 0
    }

    method contratar(mensajero) {
        if(self.contains(mensajero)){
            return
        }

        mensajeros.add(mensajero)
        return //Si no agrego esta linea me tira error, ya se que no hace falta
    } 


    method despedirTodos(){
        mensajeros = []
    }

    method despedir(mensajero) {
       if(!self.contains(mensajero)){
            return
        }

        mensajeros.remove(mensajero)
        return
    }
    
    method mensajeriaGrande(){
        return mensajeros.size() > 2
    }

    method puedeSerEntregado(paquete){
        if(!self.hayMensajeros()){
            return
        }

        return paquete.puedeSerEntregadoPor(mensajeros.first())
    }

    method pesoUltimoMensajero(){
        if(!self.hayMensajeros()){
            return
        }

        return mensajeros.last().pesoMensajero()
    }
}
