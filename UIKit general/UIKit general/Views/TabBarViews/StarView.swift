//
//  StarView.swift
//  UIKit general
//
//  Created by Олег Попов on 03.05.2022.
//

import Foundation
import UIKit

protocol NextButtonDelegate: AnyObject {
    func onNextButtonTap()
}

class StarView: UIView {
    
    let myBounds = UIScreen.main.bounds
    
    weak var delegate: NextButtonDelegate?
    
    private let nextButton: UIButton
    
    init() {
        
        // инициализация кнопки "Далее"
        
        nextButton = .init()
        nextButton.setTitle("Далее", for: .normal)
        nextButton.backgroundColor = .systemMint
        nextButton.layer.cornerRadius = 10
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Инициализация самого StarView
        
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
        self.addSubview(nextButton)
    }
    
    // функция действий на View
    
    func setupActions() {
        nextButton.addTarget(self, action: #selector(onNextButtonTap), for: .touchUpInside)
    }
    
    // функция настройки constraints
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            nextButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80),
            nextButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            nextButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80),
            nextButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    // делегируемая функция нажатия кнопки "Далее"
    
    @objc func onNextButtonTap() {
        delegate?.onNextButtonTap()
    }
}
