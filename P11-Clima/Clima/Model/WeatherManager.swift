//
//  NetworkWeatherManager.swift
//  Clima
//
//  Created by Evgenii Mazrukho on 26.08.2023.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric&apikey=\(apiKey)"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
    }
}
