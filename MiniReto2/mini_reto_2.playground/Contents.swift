//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado) //Inicia en apagado
    }
    
    func cambioDeVelocidad () ->(actual : Int, velocidadEnCadena : String){
        var velocidadEnCadena : String = ""
        var actual :Int = velocidad.rawValue
        switch velocidad{
            case .Apagado:
                velocidadEnCadena = "Apagado" //Velocidad Actual
                velocidad = .VelocidadBaja //Cambia a la velocidad siguiente
            break
            case .VelocidadBaja:
                velocidadEnCadena = "Velocidad Baja"
                velocidad = .VelocidadMedia
            break
            case .VelocidadMedia:
                velocidadEnCadena = "Velocidad Media"
                velocidad = .VelocidadAlta
            default: //Si no es ninguna de las anteriores es velocidad alta
                velocidadEnCadena = "Velocidad Alta"
                velocidad = .VelocidadMedia
            break
        }
        return (actual, velocidadEnCadena)
    }
}


var auto = Auto()

for i in 1...20{ //Hace el print 20 veces comenzando desde el 1
    print("\(i). \(auto.cambioDeVelocidad())")
}
