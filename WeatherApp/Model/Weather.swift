//
//  Weather.swift
//  WeatherApp
//
//  Created by Treinamento on 8/19/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import Foundation
struct Weather: Codable {
    let id:  Int
    let main: String
    let description:  String
    let icon: String
}
