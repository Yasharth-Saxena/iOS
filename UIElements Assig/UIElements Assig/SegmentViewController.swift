//
//  SegmentViewController.swift
//  UIElements Assig
//
//  Created by Yasharth Saxena on 10/03/20.
//  Copyright © 2020 Yasharth. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            textLabel.text = "Employer Segment Selected"
        case 1:
            textLabel.text = "Employee Segment Selected"
        default:
            break
        }
    }

}
