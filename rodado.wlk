class ChevroletCorsa {
  const color
  //*GAME
  const property imagen
  var position = new Position(x = 4, y = 7) // game.at(4,7) lo mismo
  //var posiciones = new Lista {} otra forma de hacer una nueva lista OJO SOLO EN CLASS
  const posiciones = [position]
  
  method pasajeros() = 4
  
  method velocidadMax() = 150
  
  method peso() = 1300
  
  method color() = color
  
  method image() = imagen
  
  method position() = position //
  
  method posiciones() = posiciones // de la lista
  
  method pasaPor(unaPosicion) = posiciones.contain(unaPosicion)
  
  method position(nuevaPosicion) {
    position = nuevaPosicion
  }
  
  method moverseHacia(unaDireccion) {
    if (unaDireccion == norte.direcc()) {
      self.position(self.position().up(1))
    } else {
      if (unaDireccion == sur.direcc()) {
        self.position(self.position().down(1))
      } else {
        if (unaDireccion == oeste.direcc()) self.position(
            self.position().left(1)
          )
        else self.position(self.position().right(1))
      }
    }
  }
  
  method agregarPosicion(unaDireccion) {
    posiciones.add(unaDireccion)
  }
}

object norte {
  method direcc() = self
}

object sur {
  method direcc() = self
}

object oeste {
  method direcc() = self
}

object este {
  method direcc() = self
}

class Renaultkwid {
  var tieneGas = false
  
  method pasajeros() = if (tieneGas) 3 else 4
  
  method velocidadMax() = if (tieneGas) 110 else 120
  
  method peso() = if (tieneGas) 1350 else 1200
  
  method color() = azul
  
  method ponerleGas() {
    tieneGas = true
  }
  
  method sacarGas() {
    tieneGas = false
  }
}

object azul {
  
}

object trafic {
  var interior = interiorComodo
  var motor = motorPulenta
  
  method pasajeros() = interior.pasajeros()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
  
  method velocidadMax() = motor.velocidadMax()
  
  method color() = blanco
  
  method elegirUnInterior(unInterior) {
    interior = unInterior
  }
  
  method elegirUnMotor(unMotor) {
    motor = unMotor
  }
}

object blanco {
  
}

object interiorComodo {
  method pasajeros() = 5
  
  method peso() = 700
}

object interiorPopular {
  method pasajeros() = 12
  
  method peso() = 1000
}

object motorPulenta {
  method peso() = 800
  
  method velocidadMax() = 130
}

object motorBataton {
  method peso() = 500
  
  method velocidadMax() = 80
}

class AutosEspeciales {
  var pasajeros
  var velocidadMax
  var peso
  var color
}