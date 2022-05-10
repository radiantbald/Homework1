//
//  MainViewController.swift
//  UIKit general
//
//  Created by Олег Попов on 21.04.2022.
//

import UIKit

class MainViewController: UIViewController, LoginButtonDelegate {
    
    private lazy var loginView = LoginView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        // отображение loginView при загрузке экрана
        
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Присваивание делегата контроллеру от loginView
        
        loginView.delegate = self
    }
    
    // Функция перехода на tabBar по нажатию на кнопку "Войти"
    
    func onLoginButtonTap() {
        let tabBarVC: TabBarViewContoller = TabBarViewContoller()
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true, completion: nil)
        print("Кнопка `Войти` нажата")
    }
    
}


