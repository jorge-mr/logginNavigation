//
//  FirstVC.swift
//  logginNavigation
//
//  Created by Jorge MR on 02/01/18.
//  Copyright © 2018 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Cambia el titulo del boton de back del siguiente nav
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "atras", style: .plain, target: nil, action: nil)
        //Cambia el titulo por una imagen
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "regresar"))
        textField.delegate = self
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC_Segue"{
            let viewControllerDestino = segue.destination as! SecondVC
            if textField.text != "" {
                viewControllerDestino.nombre = textField.text
            }else{
                viewControllerDestino.nombre = "Textfield Vacio"
            }
        }
    }
    
    @objc func dismissKeyboard() {
        textField.resignFirstResponder()
    }
    
    //Agregar el delegate con clicderecho en el textfield
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}
