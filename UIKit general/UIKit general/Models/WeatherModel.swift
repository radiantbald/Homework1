//
//  WeatherModel.swift
//  UIKit general
//
//  Created by Олег Попов on 10.05.2022.
//

import Foundation

struct WeatherModel: Decodable {
    
//    let coord: Coordinate
//    let weather: [Weather]
//    let base: String
    let main: Main
//    let visibility: Int
//    let wind: Wind
//    let clouds: Clouds
//    let dt: Int
//    let sys: Sys
//    let timezone: Int
//    let id: Int
    let name: String
//    let cod: Int
    
//    struct Coordinate: Decodable {
//        let lon: Double
//        let lat: Double
//    }
//
//    struct Weather: Decodable {
//        let id: Int
//        let main: String
//        let description: String
//        let icon: String
//    }
    
    struct Main: Decodable {
        let temp: Double
//        let feels_like: Double
//        let temp_min: Double
//        let temp_max: Double
//        let pressure: Int
//        let humidity: Int
//        let sea_level: Int
//        let grnd_level: Int
    }
    
//    struct Wind: Decodable {
//        let speed: Double
//        let deg: Int
//        let gust: Double
//    }
//
//    struct Clouds: Decodable {
//        let all: Int
//    }
//
//    struct Sys: Decodable {
//        let type: Int
//        let id: Int
//        let country: String
//        let sunrise: Int
//        let sunset: Int
//    }
}
