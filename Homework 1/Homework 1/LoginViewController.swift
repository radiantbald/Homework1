//
//  LoginViewController.swift
//  Homework 1
//
//  Created by Олег Попов on 23.04.2022.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    override func loadView() {
        self.view = LoginView()
    }
    
    func view() -> LoginView {
        return self.view as! LoginView
    }
}
