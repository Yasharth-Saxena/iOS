//
//  AddUserViewController.swift
//  TableViewUserDataForm
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class AddUserViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var detailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureImageView()
        
    }
    
    @IBAction func submitTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let address = addressTextField.text,
            let age = ageTextField.text,
            let detail = detailTextField.text else { return }
        ViewController.userDetailArray.append(UserDetail(name: name, address: address, age: age, detail: detail, userImage: UIImage(named: "someRandomImage")!))
        dismiss(animated: true, completion: nil)
    }
    
    private func configureImageView() {
        mainImageView.image = UIImage(named: "someRandomImage")
        mainImageView.layer.cornerRadius = mainImageView.frame.width / 2
        mainImageView.clipsToBounds = true
    }

}
