//
//  ViewController.swift
//  UIElements Assig
//
//  Created by Yasharth Saxena on 10/03/20.
//  Copyright © 2020 Yasharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = roundImage.frame.size.width / 2
        roundImage.clipsToBounds = true
    }


}

