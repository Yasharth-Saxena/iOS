//
//  SelfSizingCollectionViewController.swift
//  AutoLayoutThirdAssignment
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class SelfSizingCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let collectionArray = ["This is the first cell.", "Second cell with some more gibberish, and some more as well.", "Hello this is just to let you know that these labels have the intrinsic size property which make them so special you might be wondering what that was and I just told you what it is......"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension SelfSizingCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelfSizingCollectionViewCell", for: indexPath)
        if let label = collectionViewCell.viewWithTag(10) as? UILabel {
            label.text = collectionArray[indexPath.row]
        }

        
        return collectionViewCell
        
    }
}
