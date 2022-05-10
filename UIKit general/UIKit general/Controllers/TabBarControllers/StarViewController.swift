//
//  StarViewController.swift
//  UIKit general
//
//  Created by Олег Попов on 01.05.2022.
//

import Foundation
import UIKit

// NavigationControllerViewController

class StarViewController: UIViewController, NextButtonDelegate {
    
    private lazy var starView = StarView()
    
    override func loadView() {
        
        // отображение starView при загрузке экрана
        
        view = starView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Присваивание делегата контроллеру от starView
        
        starView.delegate = self
        title = "Star Controller"
    }
    
    // Функция перехода по кнопке "Далее" при помощи навигации
    
    func onNextButtonTap() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
        print("Кнопка `Далее` (star) нажата")
    }
}
