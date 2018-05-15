//
//  InicioSesionViewController.swift
//  PoliAsistenciaiOS
//
//  Created by Caleb on 14/05/18.
//  Copyright © 2018 Disoft. All rights reserved.
//

import UIKit

class InicioSesionViewController: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var contrasena: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let usr = usuario.text
        let psw = contrasena.text
        var tipoUsr : Int?
        if(usr == psw){
            switch usr{
            case "gestion":
                tipoUsr = 1
            case "alumno":
                tipoUsr = 2
            case "profesor":
                tipoUsr = 3
            case "jefe":
                tipoUsr = 4
            case "prefecto":
                tipoUsr = 5
            default:
                tipoUsr = 0
            }
            
            if let mainTabController = segue.destination as? MainTabController{
                mainTabController.usr = usr
                mainTabController.id = tipoUsr
            }
        }
        
    }
}
