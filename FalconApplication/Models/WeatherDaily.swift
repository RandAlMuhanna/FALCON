//
//  WeatherDaily.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import Foundation

struct WeatherDaily : Codable , Identifiable {
    
    var dt : Int
    var temp : Temperature
    var weather :[WeatherDetails]
 
    
    enum CodingKey : String {
        case dt
        case temp
        case weather
      
    }
    
    init(){
        dt = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetails(main: "", description: "", icon: "")]
        
      
    }
}

extension WeatherDaily {
    var id : UUID {
        return UUID()
    }
}
