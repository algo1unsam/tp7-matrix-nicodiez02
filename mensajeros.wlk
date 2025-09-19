object morfeo {

    var property nombre = "morfeo" 
    var property pesoMensajero = 90 
    var property transporte = camion 

    method peso(){
        return pesoMensajero + transporte.peso()
    }
}

object camion {

    var property acoplados = 1
    const media_tonelada = 500

    method peso(){
        return media_tonelada * acoplados
    } 

}

object monopatin {
    var property peso = 1 

}

object puente {

    const tonelada = 1000
    method dejarPasar(mensajero) {
        return mensajero.peso() <= tonelada 
    }

}

object paquete {

    var property pago = false
    var property destino = puente 

    method estaPago(){
        return pago;
    } 

    method pagar() {
        pago = true
    }

    method puedeSerEntregadoPor(mensajero) {
      return self.estaPago() && destino.dejarPasar(mensajero)
    }


}