import rodado.*
class Dependencia {

  var flotaDeRodados = []
  var empleados = []

  method cantidadDeEmpleado() = empleados.size()

  method agregarAFlota(unRodado) = flotaDeRodados.add(unRodado) 
  method quitarDeFlota(unRodado) = flotaDeRodados.remove(unRodado)
  method pesoTotalFlota() = flotaDeRodados.sum({ r => r.peso()})
  method estaBienEquipado() = flotaDeRodados.size() > 3 && flotaDeRodados.all({ r => r.velocidadMax() >= 100})
  method capacidadTotalEnColor(unColor) = flotaDeRodados.filter({ r => r.color() == unColor}).size()
  //?
  method colorDelRodadoMasRapido() {
    var rodadoConVelocMax = flotaDeRodados.max({ r => r.velocidadMax()})
    return rodadoConVelocMax.color()
  }
  method capacidadFaltante() = empleados.size() - self.cantidadTotalDePasajeros()
  method cantidadTotalDePasajeros() = flotaDeRodados.sum({ r => r.pasajeros()}) 
  method esGrande() = empleados.size() >= 40 && flotaDeRodados.size() == 5
}
