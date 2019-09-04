//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Treinamento on 8/26/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import Foundation

struct WeatherViewModel {
    let currentWeather : CurrentWeather
    var coordinate: String = ""
    var windSpeed: String = ""
    var windDegree: String = ""
    var location: String = ""
    init (currentWeatherData: CurrentWeather){
        self.currentWeather = currentWeatherData
        updateProperties()
    }
    mutating func updateProperties (){
        coordinate = setCoordString(currentWeather: currentWeather)
        windSpeed = setWindSpeedString(currentWeather: currentWeather)
        windDegree = setWindDirectionString(currentWeather: currentWeather)
        location = setLocationString(currentWeather: currentWeather)
    }
}
extension WeatherViewModel {
    private func setCoordString(currentWeather: CurrentWeather) -> String {
        return "Lat: \(currentWeather.coord.lat), Lon: \(currentWeather.coord.lon)"
    }
    
    private func setWindSpeedString(currentWeather: CurrentWeather) -> String {
        return "Wind Speed: \(currentWeather.wind.speed)"
    }
    
    private func setWindDirectionString(currentWeather: CurrentWeather) -> String {
        return "Wind Deg: \(currentWeather.wind.deg)"
    }
    
    private func setLocationString(currentWeather: CurrentWeather) -> String {
        return "Location: \(currentWeather.name)"
    }
}
