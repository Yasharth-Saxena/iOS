//
//  ThirdViewController.swift
//  NotificationCenterDemo
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdVCTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func submitPressed(_ sender: Any) {
        guard let textEnteredByUser = thirdVCTextField.text else {
            print("Enter Text First")
            return
            
        }
        
        let textDataDict:[String: String] = ["Message": textEnteredByUser]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: textDataDict)
    }
}
