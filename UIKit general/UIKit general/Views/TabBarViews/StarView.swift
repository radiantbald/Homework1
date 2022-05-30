//
//  StarView.swift
//  UIKit general
//
//  Created by Олег Попов on 03.05.2022.
//

import Foundation
import UIKit

protocol WeatherButtonDelegate: AnyObject {
    func onWeatherButtonTap()
}

class StarView: UIView {
    
    let myBounds = UIScreen.main.bounds
    
    weak var delegate: WeatherButtonDelegate?
    
    private let weatherButton: UIButton
    
    init() {
        
        // инициализация кнопки "Проверить погоду"
        
        weatherButton = .init()
        weatherButton.setTitle("Проверить погоду", for: .normal)
        weatherButton.backgroundColor = .systemMint
        weatherButton.layer.cornerRadius = 10
        weatherButton.setTitleColor(.black, for: .normal)
        weatherButton.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.addSubview(weatherButton)
    }
    
    // функция действий на View
    
    func setupActions() {
        weatherButton.addTarget(self, action: #selector(onWeatherButtonTap), for: .touchUpInside)
    }
    
    // функция настройки constraints
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            weatherButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80),
            weatherButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            weatherButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80),
            weatherButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    // делегируемая функция нажатия кнопки "Далее"
    
    @objc func onWeatherButtonTap() {
        delegate?.onWeatherButtonTap()
    }
}
