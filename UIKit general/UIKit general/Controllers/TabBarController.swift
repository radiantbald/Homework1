//
//  TabBarController.swift
//  UIKit general
//
//  Created by Олег Попов on 24.04.2022.
//

import Foundation
import UIKit

class TabBarViewContoller: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // добавление цвета tabBar
        
        tabBar.backgroundColor = .systemGray6
        
        // создание экземпляров tabBar
        
        let starVC = UINavigationController(rootViewController: StarViewController())
        let gearVC = UINavigationController(rootViewController: GearViewController())
        
        // задание экземплярам tabbar имен
        
        starVC.title = "Star Controller"
        gearVC.title = "Gear Controller"
        
        // привязка контроллеров к tabBar
        
        self.setViewControllers([starVC, gearVC], animated: false)
        
        // добавление иконок к названиям окон tabBar
        
        starVC.tabBarItem.image = UIImage(systemName: "star")
        gearVC.tabBarItem.image = UIImage(systemName: "gear")
        
    }
}
