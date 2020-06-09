//
//  ViewController.swift
//  DelegationProtocol&NotificationCenter
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var parentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func editPressed(_ sender: UIBarButtonItem) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension FirstViewController: SecondViewControllerDelegate {
    func didUpdateLabels(dictionary: [String: String]) {
        DispatchQueue.main.async {
            self.nameLabel.text = dictionary["name"]
            self.ageLabel.text = dictionary["age"]
            self.parentLabel.text = dictionary["parentName"]
        }
    }
}



