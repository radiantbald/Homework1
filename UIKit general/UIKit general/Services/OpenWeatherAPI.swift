//
//  File.swift
//  UIKit general
//
//  Created by Олег Попов on 11.05.2022.
//

import Foundation

final class OpenWeatherApi {
    
    let service = WeatherNetworkService()
    
    func callApi(city: String, onComplete: @escaping (WeatherModel?) -> Void) {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather"),
              var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  onComplete(nil)
                  return
              }
        
        components.queryItems = [URLQueryItem(name: "q", value: city),
                                 URLQueryItem(name: "appid", value: "ba59b5976e401c9bbfe44f0674096066")]
        
        service.loadData(path: components.url!) {result in
            switch result {
            case .success(let model):
                DispatchQueue.main.async {
                 onComplete(model)
                }
                break
            case .failure(_):
                DispatchQueue.main.async {
                    onComplete(nil)
                }
            }
        }
    }
}
