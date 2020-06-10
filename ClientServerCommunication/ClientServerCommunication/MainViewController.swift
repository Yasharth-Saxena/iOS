//
//  MainViewController.swift
//  ClientServerCommunication
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let readAndWrite = JSONInterpreter<AppData>()
    let obj = AppManager()
    var galleryItemArray : [AppData]?
    var activityIndicator: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView()
        indicatorView.hidesWhenStopped = true
        indicatorView.style = .large
        return indicatorView
    }()
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        galleryCollectionView.dataSource = self
        galleryCollectionView.delegate = self
        //register the nib
        let nib = UINib(nibName: "ImageCollectionViewCell", bundle: nil)
        galleryCollectionView.register(nib, forCellWithReuseIdentifier: "imageCVCell")
        
        //adding activityindicator to view
        view.addSubview(activityIndicator)
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100),
            activityIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            activityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 50),
            activityIndicator.heightAnchor.constraint(equalToConstant: 100.0)
        ])
        
        
        
        //
        DispatchQueue.global(qos: .background).async {
            self.obj.getImages { [weak self] (response, error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }else{
                    self?.readAndWrite.saveToLocalStorageM(data: response as! [AppData])
                    self?.galleryItemArray = self?.readAndWrite.readFromLocalStorage()
                    
                    DispatchQueue.main.async {
                        self?.galleryCollectionView.reloadData()
                    }
                }
            }
        }
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let galleryItem = galleryItemArray else { return 0 }
        return galleryItem.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width/3)-10, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as! ImageCollectionViewCell
        activityIndicator.startAnimating()
        if let thumbnailURL: String =  galleryItemArray?[indexPath.row].thumbnailURL {
            DispatchQueue.main.async {
                cell.collectionViewImage.setImageFromURL(ImageURL: thumbnailURL)
                
                
            }
        }
        activityIndicator.stopAnimating()
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "ImageDisplayController") as! ImageDisplayController
        vc.galleryModelItem = self.galleryItemArray?[indexPath.item]
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}


extension UIImageView {
    func setImageFromURL(ImageURL: String) {
        URLSession.shared.dataTask(with: URL(string: ImageURL)!) { (data, response, error) -> Void in
            let queue = OperationQueue()
            let operation = BlockOperation {
                DispatchQueue.main.async {
                    if let data = data {
                        self.image = UIImage(data: data)
                    }
                }
            }
            operation.qualityOfService = .background
            
            queue.addOperation(operation)
        }.resume()
    }
    
}
