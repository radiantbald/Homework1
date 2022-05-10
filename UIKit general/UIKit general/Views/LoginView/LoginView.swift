//
//  LoginView.swift
//  UIKit general
//
//  Created by Олег Попов on 23.04.2022.
//

import Foundation
import UIKit

protocol LoginButtonDelegate: AnyObject {
    func onLoginButtonTap()
}

class LoginView: UIView {
    
    let myBounds = UIScreen.main.bounds
    
    weak var delegate: LoginButtonDelegate?
    
    private let loginWindow: UIView
    private let loginTextField: UITextField
    private let passwordTextField: UITextField
    private let loginButton: UIButton
    
    init() {
        
        // инициализация фона формы входа
        
        loginWindow = .init()
        loginWindow.layer.cornerRadius = 20
        loginWindow.layer.backgroundColor = .init(red: 255/255, green: 127/255, blue: 80/255, alpha: 0.6)
        loginWindow.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация строки ввода логина
        
        loginTextField = .init()
        loginTextField.layer.cornerRadius = 5
        loginTextField.backgroundColor = .white
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация строки ввода пароля
        
        passwordTextField = .init()
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.backgroundColor = .white
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация кнопки входа
        
        loginButton = .init()
        loginButton.setTitle("Войти", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация самого LoginView
        
        super.init(frame: myBounds)
        setupViews()
        setupActions()
        setupConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // функция отображения subViews
    
    func setupViews() {
        self.addSubview(loginWindow)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
    }
    
    // функция действий на View
    
    func setupActions() {
        loginButton.addTarget(self, action: #selector(onLoginButtonTap), for: .touchUpInside)
    }
    
    // функция настройки constraints
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            loginWindow.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 70),
            loginWindow.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -70),
            loginWindow.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            loginWindow.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            loginTextField.leftAnchor.constraint(equalTo: loginWindow.leftAnchor, constant: 20),
            loginTextField.topAnchor.constraint(equalTo: loginWindow.topAnchor, constant: 30),
            loginTextField.rightAnchor.constraint(equalTo: loginWindow.rightAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.leftAnchor.constraint(equalTo: loginWindow.leftAnchor, constant: 20),
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: loginWindow.rightAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.leftAnchor.constraint(equalTo: loginWindow.leftAnchor, constant: 20),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.rightAnchor.constraint(equalTo: loginWindow.rightAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    // делегируемая функция нажатия кнопки "Войти"
    
    @objc func onLoginButtonTap() {
        delegate?.onLoginButtonTap()
    }
}
