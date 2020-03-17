//
//  ViewController.swift
//  Login Interface
//
//  Created by Yasharth Saxena on 17/03/20.
//  Copyright © 2020 Yasharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var secureTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userName.placeholder = "Enter Username or Email"
        secureTextField.placeholder = "Password"
        secureTextField.isSecureTextEntry = true
    }


}

