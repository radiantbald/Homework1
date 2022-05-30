//
//  NetworkService.swift
//  UIKit general
//
//  Created by Олег Попов on 10.05.2022.
//

import Foundation

final class WeatherNetworkService {
    
    private let session = URLSession.shared
    
    func loadData(path: URL, completion: @escaping (Result<WeatherModel, NetworkErrors>) -> Void) {
        
        let request = URLRequest(url: path)
        let task = session.dataTask(with: request) { data, response, error in
            
            if let JSONdata = data {
                print("\(String(data: JSONdata, encoding: .utf8) ?? "no data")")
                do {
                    let weatherModel = try JSONDecoder().decode(WeatherModel.self, from: JSONdata)
                    completion(.success(weatherModel))
                } catch {
                    completion(.failure(.parsingError))
                }
            }
            
            if (response as? HTTPURLResponse)?.statusCode != 200 {
                completion(.failure(.invalidStatusCode((response as? HTTPURLResponse)?.statusCode ?? -1)))
                return
            }
            
            if let error = error {
                completion(.failure(.undefined(error)))
                return
            }
            completion(.failure(.noData))
        }
        task.resume()
    }
}
