//
//  ImageDisplayController.swift
//  ClientServerCommunication
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class ImageDisplayController: UIViewController {

    @IBOutlet weak var galleryImage: UIImageView!
    
   var galleryModelItem: AppData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            if let galleryItem = self.galleryModelItem {
                self.galleryImage.setImageFromURL(ImageURL: galleryItem.thumbnailURL)
            }
        }
    }
    
    @IBAction func authorButtonTapped(_ sender: UIButton) {
        
        if let url = URL(string: galleryModelItem!.author_url) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:])
            }
        }
    }
    
    
}

