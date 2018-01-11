//
//  SecondVC.swift
//  logginNavigation
//
//  Created by Jorge MR on 02/01/18.
//  Copyright © 2018 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    var nombre : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = nombre
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
