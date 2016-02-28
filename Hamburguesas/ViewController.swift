//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Katherine Hernandez on 27/2/16.
//  Copyright © 2016 Katherine Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var EtiquetaHamburguesa: UILabel!
    @IBOutlet weak var EtiquetaPais: UILabel!
    
    let hamburguesas = ColeccionDeHamburguesa()
    let paises = ColeccionDePaises()
    let colores = Colores()

    @IBAction func BotonHamburguesa() {
        EtiquetaHamburguesa.text = hamburguesas.obtenHamburguesa()
        EtiquetaPais.text = paises.obtenPais()
        view.backgroundColor = colores.RegresaColorAleatorio()
    }
}

