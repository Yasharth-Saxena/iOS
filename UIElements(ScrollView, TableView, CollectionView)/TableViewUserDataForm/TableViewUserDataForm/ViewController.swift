//
//  ViewController.swift
//  TableViewUserDataForm
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

struct UserDetail {
    let name: String
    let address: String
    let age: String
    let detail: String
    let userImage: UIImage
}

class ViewController: UIViewController {
    
    public static var userDetailArray: [UserDetail] = [
        UserDetail(name: "John Doe", address: "someAddress", age: "21", detail: "someRandomDetails", userImage: UIImage(named: "someRandomImage")!),
        UserDetail(name: "Jane Doe", address: "someOtherAddress", age: "25", detail: "someOtherRandomDetails", userImage: UIImage(named: "someRandomImage")!)
        
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBAction func reloadButtonTapped(_ sender: UIBarButtonItem) {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.userDetailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        tableViewCell.configureCell(name: ViewController.userDetailArray[indexPath.row].name, address: ViewController.userDetailArray[indexPath.row].address, detail: ViewController.userDetailArray[indexPath.row].detail, age: ViewController.userDetailArray[indexPath.row].age, image: ViewController.userDetailArray[indexPath.row].userImage)
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

