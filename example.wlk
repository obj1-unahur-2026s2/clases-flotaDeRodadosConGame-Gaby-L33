/*
La capacidad de estos autos es de 4 pasajeros, su velocidad máxima 150 km/h, y pesan 1300 kg.
La municipalidad no estableció un color fijo para sus Corsa; por lo tanto, debe informarse el color de cada uno.
*/
class ChevroletCorsa {
  const pasajeros = 4
  const velocidadMax = 150
  const peso = 1300
  const property color

  method peso() = peso
  method pasajeros() = pasajeros
  method velocidadMaxima() = velocidadMax
}

/*
Varios Renault Kwid que funcionan a gas. Cada uno de ellos puede tener puesto, o no, un tanque adicional.

La capacidad de un Kwid es de 4 pasajeros si no tiene puesto el tanque adicional, o 3 pasajeros si sí lo tiene puesto.
La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional.
El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional.
Todos los autos de este tipo con que cuenta la municipalidad son azules.
*/
class RenaultKwid{
  var pasajeros
  var velocidad 
  var peso
  const color = "azul"

  method ponerTanque(){
    pasajeros = 3
    velocidad = 120
    peso = 1350
  }

  method sacarTanque(){
    pasajeros = 4
    velocidad = 110
    peso = 1200
  }

  method peso() = peso
  method pasajeros() = pasajeros
  method velocidadMaxima() = velocidad
  method color() = color
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
class Trafic{
  var pasajeros
  var pesoDelInterior
  var pesoDelMotor
  var velocidadMaxima
  const color = "blanco"

  method cambiarAInteriorComodo(){
    pasajeros = 5
    pesoDelInterior = 700
  }

  method cambiarAInteriorPopular(){
    pasajeros = 12
    pesoDelInterior = 1000
  }

  method cambiarAMotorPuluenta(){
    pesoDelMotor = 800
    velocidadMaxima = 130
  }  

  method cambiarAMotorBataton(){
    pesoDelMotor = 500
    velocidadMaxima = 80
  }

  method peso() = 4000 + pesoDelInterior + pesoDelMotor 
  method pasajeros() = pasajeros
  method velocidadMaxima() = velocidadMaxima
  method color() = color
}

class AutosEspeciales{
  var pasajeros
  var peso
  var velocidadMaxima
  var color

  method peso() = peso
  method pasajeros() = pasajeros
  method velocidadMaxima() = velocidadMaxima
  method color() = color
}