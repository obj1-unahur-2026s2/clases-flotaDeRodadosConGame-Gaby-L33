/*
La capacidad de estos autos es de 4 pasajeros, su velocidad máxima 150 km/h, y pesan 1300 kg.
La municipalidad no estableció un color fijo para sus Corsa; por lo tanto, debe informarse el color de cada uno.
*/
class ChevroletCorsa {
  const property color

  method peso() = 1300
  method pasajeros() = 4
  method velocidadMaxima() = 150
}

/*
Varios Renault Kwid que funcionan a gas. Cada uno de ellos puede tener puesto, o no, un tanque adicional.

La capacidad de un Kwid es de 4 pasajeros si no tiene puesto el tanque adicional, o 3 pasajeros si sí lo tiene puesto.
La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional.
El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional.
Todos los autos de este tipo con que cuenta la municipalidad son azules.
*/
class RenaultKwid{
  const tanqueAdicional
  method pasajeros() = if(tanqueAdicional) 3 else 4
  method velocidadMaxima() = if(tanqueAdicional) 120 else 110
  method peso() = if(tanqueAdicional) 1350 else 1200
  method color() = "azul"

}

/*
Una Trafic (sí, una sola), que es reconfigurable, porque se le puede cambiar el interior y el motor.

La municipalidad cuenta con dos interiores, uno cómodo (capacidad 5 pasajeros, peso 700 kg) y otro popular 
(capacidad 12 pasajeros, peso 1000 kg). La municipalidad tiene un solo interior de cada tipo.
También ha comprado dos motores para su Trafic, uno pulenta (que pesa 800 kg y permite una velocidad máxima
 de 130 km/h) y otro batatón (que pesa 500 kg y permite una velocidad máxima de 80 km/h). La municipalidad 
 tiene un solo motor de cada tipo.
Varias características de la Trafic dependen de qué interior y qué motor le hayan puesto:
La capacidad de la Trafic es la del interior.
La velocidad máxima es la que permite el motor.
El peso es 4000 kg más el peso del interior más el del motor.
Finalmente, digamos que la Trafic es de color blanco, independientemente del interior y el motor que tenga puestos.
*/
object trafic{
  var interior = interiorComodo
  var motor = motorPuluenta

  method pasajeros() = interior.capacidad()
  method velocidadMaxima() = motor.velocidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"

  method cambiarInterior(nuevoInterior){interior = nuevoInterior}

  method cambiarMotor(nuevoMotor){motor = nuevoMotor}
}

object interiorComodo{
  method capacidad() = 5
  method peso() = 700
}

object interiorPopular{
  method capacidad() = 12
  method peso() = 1000
}

object motorPuluenta{
  method velocidad() = 130
  method peso() = 800
}

object motorBataton{
  method velocidad() = 80
  method peso() = 500
}

class AutoEspecial{
  const property pasajeros
  const property peso
  const property velocidadMaxima
  const property color
}