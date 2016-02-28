//
//  ViewController.swift
//  MasFeliz
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

    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Datos()
    

    @IBAction func dameUnMesaje() {
        mensajePositivo.text = frases.RegresaColorAleatorio()
        let colorAleatorio = colores.RegresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        //view.tintColor = colorAleatorio
    }
    
    
}

