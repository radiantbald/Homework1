//
//  WeatherViewController.swift
//  UIKit general
//
//  Created by Олег Попов on 10.05.2022.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate, CityConfirmButtonDelegate {
    
    private lazy var weatherView = WeatherView()
    private let openWeatherApi = OpenWeatherApi()
    
    override func loadView() {
        super.loadView()
        
        view = weatherView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherView.delegate = self
        
    }
    
    func userSelectSearch(cityName: String) {
        
        weatherView.showLoader()
        
        openWeatherApi.callApi(city: cityName) { [weak self] model in
            if let model = model {
                self?.weatherView.cityName.text = "Город: \(model.name)"
                self?.weatherView.temp.text = "Температура: \(model.main.temp)"
            } else {
                self?.weatherView.cityName.text = "Город не найден"
                self?.weatherView.temp.text = "Температура: ---"
            }
            self?.weatherView.hideLoader()
        }
        print("Кнопка `Подтвердить город - \(cityName)` нажата")
    }
}
