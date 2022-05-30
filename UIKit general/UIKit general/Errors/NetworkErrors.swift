//
//  NetworkErrors.swift
//  UIKit general
//
//  Created by Олег Попов on 10.05.2022.
//

import Foundation

enum NetworkErrors: Error {
    case invalidStatusCode(Int)
    case noData
    case parsingError
    case undefined(Error)
}
