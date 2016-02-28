//
//  Datos.swift
//  Hamburguesas
//
//  Created by Katherine Hernandez on 27/2/16.
//  Copyright © 2016 Katherine Hernandez. All rights reserved.
//

import Foundation
import UIKit

struct ColeccionDePaises {
    let paises = [
        "Honduras",
        "Mexico",
        "Japón",
        "Corea",
        "China",
        "Tailandia",
        "US",
        "Francia",
        "Italia",
        "Suecia",
        "Africa",
        "Guatemala",
        "Canada",
        "Argentina",
        "Venezuela",
        "Chile",
        "Brasil",
        "Finlandia",
        "Fiji",
        "Haiti",
        "Cuba",
        "Panama",
        "Costa Rica",
        "India"
    ]
    
    func obtenPais()->String{
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

struct ColeccionDeHamburguesa {
    let hamburguesas = [
        "Hamburguesa con Queso - $23.22",
        "Hamburguesa sin Queso - $10.21",
        "Hamburguesa con Doble Queso - $23.12",
        "Hamburguesa sin Carne - $12.32",
        "Hamburguesa con Doble Carne - $45.23",
        "Hamburguesa Sencilla - $23.42",
        "Hamburguesa con Baicon - $12.34",
        "Hamburguesa con Chili - $12.45",
        "Hamburguesa con Cebolla - $32.12",
        "Hamburguesa con sin Tomate - $21.34",
        "Hamburguesa Mexicana - $12.34",
        "Hamburguesa sin Cebolla - $11.00",
        "Hamburguesa con Jalapeño - $12.34",
        "Hamburguesa con Pepinillo - $11.23",
        "Hamburguesa sin Pepinillos - $11.45",
        "Hamburguesa de Jamon y Queso - $11.78",
        "Hamburguesa con Guacamole - $11.35",
        "Hamburguesa con todo Doble - $32.32",
        "Hamburguesa con Triple de Carne - $23.45",
        "Hamburguesa con ELementos extras - $12.45",
        "Hamburguesas inventada..... - $13.45"
    ]
    
    func obtenHamburguesa()->String{
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}

struct Colores {
    let colores = [
        UIColor(red: 30/255, green: 10/255, blue: 9/255, alpha: 1),
        UIColor(red: 40/255, green: 20/255, blue: 12/255, alpha: 1),
        UIColor(red: 30/255, green: 190/255, blue: 90/255, alpha: 1),
        UIColor(red: 60/255, green: 40/255, blue: 10/255, alpha: 1),
        UIColor(red: 70/255, green: 150/255, blue: 1/255, alpha: 1),
        UIColor(red: 80/255, green: 70/255, blue: 34/255, alpha: 1),
        UIColor(red: 130/255, green: 190/255, blue: 90/255, alpha: 1),
        UIColor(red: 90/255, green: 50/255, blue: 53/255, alpha: 1),
        UIColor(red: 10/255, green: 160/255, blue: 19/255, alpha: 1)
    ]
    
    func RegresaColorAleatorio()->UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}