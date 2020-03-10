//
//  DescriptionViewController.swift
//  UIElements Assig
//
//  Created by Yasharth Saxena on 10/03/20.
//  Copyright © 2020 Yasharth. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var roundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = roundImage.frame.size.width / 2
        roundImage.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
