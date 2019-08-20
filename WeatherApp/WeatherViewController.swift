//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Treinamento on 8/14/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var getWeatherInfoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fetchWeatherInfo() {
        longitudeLabel.text = "-23,6027"
        latitudeLabel.text = "-46,8698"
        temperatureLabel.text = "13 °C"
        
    }
   
    @IBAction func setWeatherInfo(_ sender: Any) {
        fetchWeatherInfo()
    }
    
}
