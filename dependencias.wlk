import example.*

class Dependencia{
    const flotaDeRodados = []
    const empleados

    method agregarAFlota(rodado){
        flotaDeRodados.add(rodado)
    }

    method quitarDeFlota(rodado){
        flotaDeRodados.remove(rodado)
    }

    method pesoTotalFlota() = flotaDeRodados.sum({pesoDeRodado => pesoDeRodado.peso()})

    method estaBienEquipada(){
        return flotaDeRodados.size() >= 3 && flotaDeRodados.all({r => r.velocidadMaxima() >= 100})
    } 

    method rodadosColor(color) = flotaDeRodados.filter({r => r.color() == color})

    method capacidadTotalEnColor(color) = self.rodadosColor(color).sum({r => r.pasajeros()})
    
}