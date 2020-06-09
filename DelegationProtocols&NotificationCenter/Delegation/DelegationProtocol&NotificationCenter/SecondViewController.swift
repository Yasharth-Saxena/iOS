//
//  SecondViewController.swift
//  DelegationProtocol&NotificationCenter
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func didUpdateLabels(dictionary: [String: String])
}

class SecondViewController: UIViewController {
    var delegate: SecondViewControllerDelegate?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var parentTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let parentName = parentTextField.text else { return }
        let dataDict = ["name": name, "age": age, "parentName": parentName]
        delegate?.didUpdateLabels(dictionary: dataDict)
        self.navigationController?.popViewController(animated: true)
    }
    
}

