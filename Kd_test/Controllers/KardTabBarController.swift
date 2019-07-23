//
//  KardTabBarController.swift
//  Kd_test
//
//  Created by Eric DkL on 23/07/2019.
//  Copyright © 2019 Eric DkL. All rights reserved.
//

import UIKit

class KardTabBarController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: ViewController(), title: "Gift", imageName: "giftbox"),
            createNavController(viewController: KardHomeViewController(), title: "Home", imageName: "home"),
            createNavController(viewController: ViewController(), title: "Arrow", imageName: "arrows"),
        ]
        tabBar.alpha = 0.9
        
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        viewController.view.backgroundColor = .white
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: imageName)
        
        return viewController
    }
}
