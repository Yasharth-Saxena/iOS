//
//  ViewController.swift
//  AutoLayoutThirdAssignment
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class SelfSizingTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let tableArray = ["This is the first cell.", "Second cell with some more gibberish, and some more as well.", "Hello this is just to let you know that these labels have the intrinsic size property which make them so special you might be wondering what that was and I just told you what it is......"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 30
        
        
    }
    

  
}


extension SelfSizingTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell  =  tableView.dequeueReusableCell(withIdentifier: "SelfSizingTableViewCell", for: indexPath)
        if let label = tableViewCell.viewWithTag(10) as? UILabel {
            label.text = tableArray[indexPath.row]
        }
        
        return tableViewCell
        
    }
    
    
}

