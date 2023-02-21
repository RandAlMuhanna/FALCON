//
//  API+Extensions.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import Foundation

extension API {
    
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat : Double , lon : Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
        
    }
}


//https://api.openweathermap.org/data/2.5/onecall?lat=24.7136&lon=46.6753&exclude=minutely&appid=8dce10ec3e4d33171bfb68457988f685
