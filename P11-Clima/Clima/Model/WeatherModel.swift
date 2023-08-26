//
//  WeatherModel.swift
//  Clima
//
//  Created by Evgenii Mazrukho on 26.08.2023.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    func getConditionName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232: return "cloud.bolt"
        case 300...321: return "cloud.drizzle"
        case 500...531: return "cloud.rain"
        case 600...622: return "cloud.snow"
        case 701...781: return "cloud.fog"
        case 800: return "sun.min"
        case 801...804: return "cloud"
        default: return "nosign"
        }
    }
}
