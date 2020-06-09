//
//  ViewController.swift
//  AutoLayoutTwo
//
//  Created by Yasharth Saxena on 10/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class ProgViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let topLeftView = UIView()
        topLeftView.backgroundColor = .green
        view.addSubview(topLeftView)
        topLeftView.translatesAutoresizingMaskIntoConstraints = false
        
        let topRightView = UIView()
        topRightView.backgroundColor = .yellow
        view.addSubview(topRightView)
        topRightView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLeftView = UIView()
        bottomLeftView.backgroundColor = .red
        view.addSubview(bottomLeftView)
        bottomLeftView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomRightView = UIView()
        bottomRightView.backgroundColor = .blue
        view.addSubview(bottomRightView)
        bottomRightView.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Contraints forthe base view
        
        NSLayoutConstraint.activate([
            topLeftView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topLeftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            topLeftView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            
            topRightView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topRightView.leadingAnchor.constraint(equalTo: topLeftView.trailingAnchor),
            topRightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            topRightView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            
            bottomLeftView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomLeftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            bottomLeftView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            
            bottomRightView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomRightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            bottomRightView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            
        ])
        
        //Adding subview
        
        let topLeftSubView = UIView()
        topLeftSubView.backgroundColor = .white
        topLeftView.addSubview(topLeftSubView)
        topLeftSubView.translatesAutoresizingMaskIntoConstraints = false
        
        let topRightSubView = UIView()
        topRightSubView.backgroundColor = .white
        topRightView.addSubview(topRightSubView)
        topRightSubView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLeftSubView = UIView()
        bottomLeftSubView.backgroundColor = .white
        bottomLeftView.addSubview(bottomLeftSubView)
        bottomLeftSubView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomRightSubView = UIView()
        bottomRightSubView.backgroundColor = .white
        bottomRightView.addSubview(bottomRightSubView)
        bottomRightSubView.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Adding constraints to subviews
        
        NSLayoutConstraint.activate([
            topLeftSubView.centerXAnchor.constraint(equalTo: topLeftView.centerXAnchor),
            topLeftSubView.centerYAnchor.constraint(equalTo: topLeftView.centerYAnchor),
            topLeftSubView.widthAnchor.constraint(equalTo: topLeftView.widthAnchor, multiplier: 0.8),
            topLeftSubView.heightAnchor.constraint(equalTo: topLeftView.heightAnchor, multiplier: 0.7),
            
            topRightSubView.centerXAnchor.constraint(equalTo: topRightView.centerXAnchor),
            topRightSubView.centerYAnchor.constraint(equalTo: topRightView.centerYAnchor),
            topRightSubView.widthAnchor.constraint(equalTo: topRightView.widthAnchor, multiplier: 0.8),
            topRightSubView.heightAnchor.constraint(equalTo: topRightView.heightAnchor, multiplier: 0.7),
            
            bottomLeftSubView.centerXAnchor.constraint(equalTo: bottomLeftView.centerXAnchor),
            bottomLeftSubView.centerYAnchor.constraint(equalTo: bottomLeftView.centerYAnchor),
            bottomLeftSubView.widthAnchor.constraint(equalTo: bottomLeftView.widthAnchor, multiplier: 0.8),
            bottomLeftSubView.heightAnchor.constraint(equalTo: bottomLeftView.heightAnchor, multiplier: 0.7),
            
            bottomRightSubView.centerXAnchor.constraint(equalTo: bottomRightView.centerXAnchor),
            bottomRightSubView.centerYAnchor.constraint(equalTo: bottomRightView.centerYAnchor),
            bottomRightSubView.widthAnchor.constraint(equalTo: bottomRightView.widthAnchor, multiplier: 0.8),
            bottomRightSubView.heightAnchor.constraint(equalTo: bottomRightView.heightAnchor, multiplier: 0.7),
            
            
        ])
        
        
        //Adding Labels
        
        let topLeftLabel = UILabel()
        topLeftLabel.text = "Ray"
        topLeftView.addSubview(topLeftLabel)
        topLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let topRightLabel = UILabel()
        topRightLabel.text = "Matthew"
        topRightView.addSubview(topRightLabel)
        topRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLeftLabel = UILabel()
        bottomLeftLabel.text = "Dennis Ritchie"
        bottomLeftView.addSubview(bottomLeftLabel)
        bottomLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        let bottomRightLabel = UILabel()
        bottomRightLabel.text = "Brad Cox"
        bottomRightView.addSubview(bottomRightLabel)
        bottomRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        //Adding constraints to label
        
        NSLayoutConstraint.activate([
            topLeftLabel.topAnchor.constraint(equalTo: topLeftSubView.bottomAnchor, constant: 5.0),
            topLeftLabel.centerXAnchor.constraint(equalTo: topLeftSubView.centerXAnchor),
            
            topRightLabel.topAnchor.constraint(equalTo: topRightSubView.bottomAnchor, constant: 5.0),
            topRightLabel.centerXAnchor.constraint(equalTo: topRightSubView.centerXAnchor),
            
           bottomLeftLabel.topAnchor.constraint(equalTo: bottomLeftSubView.bottomAnchor, constant: 5.0),
            bottomLeftLabel.centerXAnchor.constraint(equalTo: bottomLeftSubView.centerXAnchor),
            
            bottomRightLabel.topAnchor.constraint(equalTo: bottomRightSubView.bottomAnchor, constant: 5.0),
           bottomRightLabel.centerXAnchor.constraint(equalTo: bottomRightSubView.centerXAnchor),
            
        ])
        
        
        let topLeftImageView = UIImageView()
        topLeftImageView.image = #imageLiteral(resourceName: "monkey")
        topLeftSubView.addSubview(topLeftImageView)
        topLeftImageView.contentMode = .scaleAspectFit
        topLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let topRightImageView = UIImageView()
        topRightImageView.image = #imageLiteral(resourceName: "panda")
        topRightSubView.addSubview(topRightImageView)
        topRightImageView.contentMode = .scaleAspectFit
        topRightImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLeftImageView = UIImageView()
        bottomLeftImageView.image = #imageLiteral(resourceName: "eagle")
        bottomLeftImageView.contentMode = .scaleAspectFit
        bottomLeftSubView.addSubview(bottomLeftImageView)
        
        bottomLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomRightImageView = UIImageView()
        bottomRightImageView.image = #imageLiteral(resourceName: "skeleton")
        bottomRightSubView.addSubview(bottomRightImageView)
        bottomRightImageView.contentMode = .scaleAspectFit
        bottomRightImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Image View constraints
        
        NSLayoutConstraint.activate([
            topLeftImageView.centerXAnchor.constraint(equalTo: topLeftSubView.centerXAnchor),
            topLeftImageView.centerYAnchor.constraint(equalTo: topLeftSubView.centerYAnchor),
            topLeftImageView.heightAnchor.constraint(equalTo: topLeftSubView.heightAnchor, multiplier: 1),
            topLeftImageView.widthAnchor.constraint(equalTo: topLeftSubView.widthAnchor, multiplier: 0.5),
            
            topRightImageView.centerXAnchor.constraint(equalTo: topRightSubView.centerXAnchor),
            topLeftImageView.centerYAnchor.constraint(equalTo: topRightSubView.centerYAnchor),
            topRightImageView.heightAnchor.constraint(equalTo: topRightSubView.heightAnchor, multiplier: 1),
            topRightImageView.widthAnchor.constraint(equalTo: topRightSubView.widthAnchor, multiplier: 0.5),
            
            bottomLeftImageView.centerXAnchor.constraint(equalTo: bottomLeftSubView.centerXAnchor),
            bottomLeftImageView.centerYAnchor.constraint(equalTo: bottomLeftSubView.centerYAnchor),
            bottomLeftImageView.heightAnchor.constraint(equalTo: bottomLeftSubView.heightAnchor, multiplier: 1),
            bottomLeftImageView.widthAnchor.constraint(equalTo: bottomLeftSubView.widthAnchor, multiplier: 0.5),
            
            bottomRightImageView.centerXAnchor.constraint(equalTo: bottomRightSubView.centerXAnchor),
            bottomLeftImageView.centerYAnchor.constraint(equalTo: bottomRightSubView.centerYAnchor),
            bottomRightImageView.heightAnchor.constraint(equalTo: bottomRightSubView.heightAnchor, multiplier: 1),
            bottomRightImageView.widthAnchor.constraint(equalTo: bottomRightSubView.widthAnchor, multiplier: 0.5),
            
        ])
        
        
        
    }
    

}

