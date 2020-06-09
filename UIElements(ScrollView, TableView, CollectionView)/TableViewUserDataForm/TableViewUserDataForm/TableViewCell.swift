//
//  TableViewCell.swift
//  TableViewUserDataForm
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"

    @IBOutlet weak var tableViewCellImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(name: String, address: String, detail: String, age: String, image: UIImage) {
        tableViewCellImageView.image = image 
        nameLabel.text = name
        addressLabel.text = address
        detailLabel.text = detail
        ageLabel.text = age
    }

}
