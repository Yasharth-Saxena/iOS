//
//  ViewController.swift
//  TableViewAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class CollectionViewInTableViewScene: UIViewController {
    let sectionTitleArray = ["Action","Drama","Science Fiction","Kids","Horror"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension CollectionViewInTableViewScene: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitleArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitleArray[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customTableViewCell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        return customTableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}

