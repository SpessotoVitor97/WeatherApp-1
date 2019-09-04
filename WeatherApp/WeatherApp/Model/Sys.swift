//
//  Sys.swift
//  WeatherApp
//
//  Created by Treinamento on 8/19/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import Foundation
struct Sys: Codable {
    let type: Int
    let id: Int
    let message: Double
    let country: String
    let sunrise: Int
    let sunset: Int
}
