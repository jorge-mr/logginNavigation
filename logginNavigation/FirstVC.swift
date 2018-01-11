//
//  FirstVC.swift
//  logginNavigation
//
//  Created by Jorge MR on 02/01/18.
//  Copyright © 2018 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Cambia el titulo del boton de back del siguiente nav
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "atras", style: .plain, target: nil, action: nil)
        //Cambia el titulo por una imagen
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "regresar"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
