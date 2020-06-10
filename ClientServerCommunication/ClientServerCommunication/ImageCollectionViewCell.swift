//
//  ImageCollectionViewCell.swift
//  ClientServerCommunication
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    static let identifier = "ImageCollectionViewCell"

    @IBOutlet weak var collectionViewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

}
