//
//  CustomCollectionViewCell.swift
//  TableViewAssignment
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

}
