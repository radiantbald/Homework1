//
//  File.swift
//  Homework 1
//
//  Created by Олег Попов on 23.04.2022.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.addSubview(loginView)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
    }
    
    func setupConstraints() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        loginView.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            loginView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 70),
            loginView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -70),
            loginView.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            loginView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            loginTextField.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20),
            loginTextField.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 30),
            loginTextField.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.leftAnchor.constraint(equalTo: loginView.leftAnchor, constant: 20),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.rightAnchor.constraint(equalTo: loginView.rightAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    let loginView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.layer.cornerRadius = 20
        view.layer.backgroundColor = .init(red: 255/255, green: 127/255, blue: 80/255, alpha: 0.6)
        return view
    }()
    
    let loginTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
}
