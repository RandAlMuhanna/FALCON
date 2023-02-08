//
//  WeatherResponse.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import Foundation

struct WeatherResponse : Codable {
    
    var current : Weather
    var hourly : [Weather]
    var daily : [WeatherDaily]
    
    static func empty() -> WeatherResponse {
        
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily:  [WeatherDaily](repeating: WeatherDaily(), count: 8))
    }
    
}
