//
//  ViewController.swift
//  Homework 1
//
//  Created by Олег Попов on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let loginView: UIView = {
        let view = UIView()
        view.isOpaque = false
        view.alpha = 0.6
        view.backgroundColor = .orange
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let loginTextField = UITextField(frame: CGRect(x: 10, y: 60, width: 200, height: 100))
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 5
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: 10, y: 60, width: 200, height: 100))
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        let loginButton = UIButton(frame: .zero)
        loginButton.isOpaque = true
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Войти", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        view.addSubview(loginButton)
        
        loginTextFieldSetup()
        passwordTextFieldSetup()
        loginButtonSetup()
        
        func loginTextFieldSetup() {
            loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
            loginTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
            loginTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        func passwordTextFieldSetup() {
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
            passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10).isActive = true
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        func loginButtonSetup() {
            loginButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            loginButton.heightAnchor.constraint(equalToConstant: 16).isActive = true
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        return view
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(loginView)
        
        loginViewSetup()
    }
    
    func loginViewSetup() {
        loginView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        loginView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        loginView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

