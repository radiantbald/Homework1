//
//  GearViewController.swift
//  UIKit general
//
//  Created by Олег Попов on 01.05.2022.
//

import Foundation
import UIKit

//ModalViewViewController

class GearViewController: UIViewController, NextButtonDelegate {
    
    private lazy var gearView = GearView()
    
    override func loadView() {
        
        // показ gearView при загрузке экрана
        
        view = gearView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Присваивание делегата
        
        gearView.delegate = self
        title = "Gear Controller"
    }
    
    // Функция перехода по кнопке "Далее" при помощи модального показа
    
    func onNextButtonTap() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        present(vc, animated: true, completion: nil)
        print("Кнопка `Далее` (gear) нажата")
    }
}
