//
//  WeatherView.swift
//  UIKit general
//
//  Created by Олег Попов on 11.05.2022.
//

import Foundation
import UIKit

// протокол подтверждения ввода города

protocol CityConfirmButtonDelegate: AnyObject {
    func userSelectSearch(cityName: String)
}

final class WeatherView: UIView {

    weak var delegate: CityConfirmButtonDelegate?
    
    let loader: UIActivityIndicatorView
    var cityTextField: UITextField
    var cityConfirmButton: UIButton
    var cityName: UILabel
    var temp: UILabel
    
    
    init() {
        
        // инициализация лоадера
        
        loader = .init()
        loader.isHidden
        // инициализация поля ввода города
        
        cityTextField = .init()
        cityTextField.layer.cornerRadius = 5
        cityTextField.layer.borderWidth = 1
        cityTextField.backgroundColor = .white
        cityTextField.textAlignment = .center
        cityTextField.placeholder = "Введите город"
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация кнопки "подтвердить город"
        
        cityConfirmButton = .init()
        cityConfirmButton.setTitle("Подтвердить город", for: .normal)
        cityConfirmButton.backgroundColor = .systemMint
        cityConfirmButton.layer.cornerRadius = 10
        cityConfirmButton.setTitleColor(.black, for: .normal)
        cityConfirmButton.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация названия города
        
        cityName = .init()
        cityName.text = ""
        cityName.textColor = .black
        cityName.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация температуры
        
        temp = .init()
        temp.text = ""
        temp.textColor = .black
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        // инициализация самого WeatherView
        
        super.init(frame: .zero)
        setupViews()
        setupActions()
        setupConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        loader.frame = bounds
    }
    
    func setupViews() {
        addSubview(cityTextField)
        addSubview(cityConfirmButton)
        addSubview(cityName)
        addSubview(temp)
        addSubview(loader)
    }
    
    func setupActions() {
        cityConfirmButton.addTarget(self, action: #selector(onCityConfirmButtonTap), for: .touchUpInside)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
        
            cityTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80),
            cityTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            cityTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80),
            cityTextField.heightAnchor.constraint(equalToConstant: 40),
            
            cityConfirmButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80),
            cityConfirmButton.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 10),
            cityConfirmButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80),
            cityConfirmButton.heightAnchor.constraint(equalToConstant: 40),
            
            cityName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            cityName.topAnchor.constraint(equalTo: cityConfirmButton.bottomAnchor, constant: 20),
            cityName.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            cityName.heightAnchor.constraint(equalToConstant: 20),
            
            temp.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            temp.topAnchor.constraint(equalTo: cityName.bottomAnchor, constant: 5),
            temp.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            temp.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    @objc func onCityConfirmButtonTap() {
        if let cityName = cityTextField.text, !cityName.isEmpty {
            delegate?.userSelectSearch(cityName: cityName)
        }
    }
    
    func showLoader() {
        loader.isHidden = false
        loader.startAnimating()
    }
    
    func hideLoader() {
        loader.isHidden = true
        loader.stopAnimating()
    }
}
