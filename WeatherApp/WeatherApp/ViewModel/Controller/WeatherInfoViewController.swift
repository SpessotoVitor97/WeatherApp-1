//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Treinamento on 8/14/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let apiManager = APIManager()
    private(set) var weatherViewModel: WeatherViewModel?
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var coordLabel: UILabel!
    @IBOutlet weak var getWeatherInfo: UIButton!
    
    var searchResult: CurrentWeather? {
        didSet {
            guard let searchResult = searchResult else { return }
            weatherViewModel = WeatherViewModel.init(currentWeatherData: searchResult)
            DispatchQueue.main.async {
                self.updateLabels()
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func setWeatherInfo(_ sender: Any) {
        getWeather()
    }
    
}

extension WeatherViewController {
    private func updateLabels() {
        guard let weatherViewModel = weatherViewModel else { return }
        locationLabel.text = weatherViewModel.location
        windSpeedLabel.text = weatherViewModel.windSpeed
        windDirectionLabel.text = weatherViewModel.windDegree
        coordLabel.text = weatherViewModel.coordinate
    }
    
    private func getWeather() {
        apiManager.getWeather() { (weather, error) in
            if let error = error {
                print("Get weather error: \(error.localizedDescription)")
                return
            }
            guard let weather = weather  else { return }
            self.searchResult = weather
            print("Current Weather Object:")
            print(weather)
        }
    }
}
