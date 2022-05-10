//
//  LoginTextFieldViewController.swift
//  Homework 1
//
//  Created by Олег Попов on 23.04.2022.
//

import Foundation
import UIKit
    
    let loginTextField = UITextField(frame: CGRect(x: 10, y: 60, width: 200, height: 100))
    loginTextField.backgroundColor = .white
    loginTextField.layer.cornerRadius = 5
    loginTextField.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(loginTextField)
    
    func loginTextFieldSetup() {
        loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        loginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
}
