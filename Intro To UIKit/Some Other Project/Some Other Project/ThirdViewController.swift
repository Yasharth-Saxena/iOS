//
//  ThirdViewController.swift
//  Some Other Project
//
//  Created by Yasharth Saxena on 08/03/20.
//  Copyright © 2020 Yasharth. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Third VC"
    }
    
    @IBAction func dismissTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
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
