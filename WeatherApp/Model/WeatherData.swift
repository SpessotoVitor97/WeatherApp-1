//
//  WheatherData.swift
//  WeatherApp
//
//  Created by Treinamento on 8/19/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    let id: Int
    let name: String
    let base: String
    let visibility: Int
    let dt: Int
    let wind: Wind
    let coord: Coord
    let main: Main
    let sys: Sys
    let cloud: Cloud
    let weather: [Weather]
}
