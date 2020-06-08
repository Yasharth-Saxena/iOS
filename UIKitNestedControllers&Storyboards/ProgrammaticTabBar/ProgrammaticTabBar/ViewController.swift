//
//  ViewController.swift
//  ProgrammaticTabBar
//
//  Created by Yasharth Saxena on 08/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myTabBarController = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTabBarController()
    }
    
    private func createTabBarController() {
    
        let firstVc = UIViewController()
        firstVc.title = "First"
        firstVc.view.backgroundColor =  UIColor.red
        firstVc.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        let secondVc = UIViewController()
        secondVc.title = "Second"
        secondVc.view.backgroundColor =  UIColor.green
        secondVc.tabBarItem = UITabBarItem.init(title: "Location", image: UIImage(systemName: "location"), tag: 1)

        let controllerArray = [firstVc, secondVc]
        myTabBarController.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
        
        self.view.addSubview(myTabBarController.view)
    }

}

