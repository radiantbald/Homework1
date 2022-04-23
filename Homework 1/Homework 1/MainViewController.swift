//
//  ViewController.swift
//  Homework 1
//
//  Created by Олег Попов on 21.04.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func loadView() {
        self.view = LoginView(frame: UIScreen.main.bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

