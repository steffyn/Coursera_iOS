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
        var actual : Int = 0
        switch velocidad{
            case .Apagado:
                actual = velocidad.rawValue //Toma el valor actual
                velocidadEnCadena = "Apagado" //Velocidad Actual
                velocidad = Velocidades.VelocidadBaja //Cambia a la velocidad siguiente
            break
            case .VelocidadBaja:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Baja"
                velocidad = Velocidades.VelocidadMedia
            break
            case .VelocidadMedia:
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Media"
                velocidad = Velocidades.VelocidadAlta
            default: //Si no es ninguna de las anteriores es velocidad alta
                actual = velocidad.rawValue
                velocidadEnCadena = "Velocidad Alta"
                velocidad = Velocidades.VelocidadMedia
            break
        }
        return (actual, velocidadEnCadena)
    }
}


var auto = Auto()

for i in 1...20{ //Hace el print 20 veces comenzando desde el 1
    print("\(i). \(auto.cambioDeVelocidad())")
}
