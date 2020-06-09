//
//  SecondViewController.swift
//  NotificationCenterDemo
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateLabel(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }

    @objc func updateLabel(_ notification: NSNotification) {
           print(notification.userInfo ?? "")
           if let dict = notification.userInfo as NSDictionary? {
               if let text = dict["Message"] as? String{
                secondVCLabel.text = text
               }
           }
    }

}
