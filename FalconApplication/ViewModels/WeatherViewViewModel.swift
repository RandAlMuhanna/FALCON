//
//  WeatherViewViewModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import CoreLocation
import SwiftUI

final class WeatherViewViewModel: ObservableObject{
    
 
    
    @Published var weather = WeatherResponse.empty()
    @Published var didFound: Bool = true
    @Published var city : String = "Riyadh" {
        ///
        didSet {
            getLocation()
        }
    }
    
    private lazy var dateFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
    
    private lazy var dayFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter
    }()
    
    private lazy var timeFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh a"
        return formatter
    }()
    
    init() {

        getLocation()
    }
    

    
    var date : String {
        return dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(weather.current.dt)))
    }
    
    var weatherIcons : String {
        if weather.current.weather.count > 0 {
            return weather.current.weather[0].icon
        }
        return "dayClearSky"
    }
    
    var temperature : String {
//        return getTempFor(temp: weather.current.temp)
        return String(weather.current.temp.convertToInt)
    }
    
    
 
    
    var condition: String {
        
        if weather.current.weather.count > 0 {
            return weather.current.weather[0].description
        }
        return ""
    }
    
    var windSpeed: String {
        return String(format: "%0.1f", weather.current.wind_speed)
        
    }
    
    var humidity: String {
        return String(format: "%d%%", weather.current.humidity)
        
    }
    
    var feelsLike: String {
        return String(weather.current.feels_like.convertToInt)
        
    }
    
    
    var rainChance: String {
        return String(format: "%0.0f", weather.current.dew_point)
        
    }
    
    func getTimeFor(timestamp : Int) -> String{
        return timeFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(timestamp)))
    }
    
    func getTempFor(temp : Double) -> String {
        return String(temp.convertToInt)
    }
    
    func getDayFor(timestamp : Int) -> String {
        return dayFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(timestamp)))
    }
    
    
    private func getLocation(){
//         let locationManager = CLLocationManager()
//        locationManager.requestLocation()

        CLGeocoder().geocodeAddressString(city) { (placemarks , error) in
            if let places = placemarks, let place = places.first{
                self.didFound = true

                self.getWeather(coord: place.location?.coordinate)
                
                   
            } else {
                self.didFound = false

            }
        }
    }
    
  
    
    //Get address uding lon and lat
    private func getWeather(coord : CLLocationCoordinate2D?) {
        if let coord = coord {
            let urlString = API.getURLFor(lat: coord.latitude, lon: coord.longitude)
            getWeatherInternal(city: city, for: urlString)
            
        } else{
            self.didFound = false
            let urlString = API.getURLFor(lat: 25.249359, lon: 45.261669)
            getWeatherInternal(city: city, for: urlString)
        }
        
          
    }
    
    
    private func getWeatherInternal(city : String , for urlString: String){
        // Loading
        NetWorkManager<WeatherResponse>.fetch(for: URL(string: urlString)!) { (result) in
            switch result {
            case .success(let response):
                // Loading completed
                DispatchQueue.main.async {
                    self.didFound = true

                    self.weather = response
                }
            case .failure(let err) :
                // Loading failed
                print(err)
                self.didFound = false

            }
            
        }
    }
    
    
    func getLottiAnimation(icon : String) -> String {
        
        switch icon {
        case "01d" :
            return "dayClearSky"
        case "01n" :
            return "nightClearSky"
            
            
        case "02d" :
            return "dayFewClouds"
        case "02n" :
            return "nightFewClouds"
            
            
        case "03d" :
            return "dayScatteredClouds"
        case "03n" :
            return "nightScatteredClouds"
            
            
        case "04d" :
            return "dayBrokenClouds"
        case "04n" :
            return "nightBrokenClouds"
            
            
        case "09d" :
            return "dayShowerRains"
        case "09n" :
            return "nightShowerRains"
            
            
        case "10d" :
            return "dayRain"
        case "10n" :
            return "nightRain"
            
            
        case "11d" :
            return "dayThunderstrom"
        case "011n" :
            return "nightThunderstrom"
            
        case "13d" :
            return "daySnow"
        case "13n" :
            return "nightSnow"
            
        case "50d" :
            return "dayMist"
        case "50n" :
            return "nightMist"
            
        default :
            return "dayClearSky"
        }
        
    }
    
    func getWeatherIconFor(icon : String) -> Image {
        
        switch icon {
            
        case "01d" :
            return Image(systemName : "sun.max.fill")
        case "01n" :
            return Image(systemName : "moon.fill")
            
            
        case "02d" :
            return Image(systemName : "cloud.sun.fill")
        case "02n" :
            return Image(systemName : "cloud.moon.fill")
            
            
        case "03d" :
            return Image(systemName : "cloud.fill")
        case "03n" :
            return Image(systemName : "cloud.fill")
            
            
        case "04d" :
            return Image(systemName : "cloud.fill")
        case "04n" :
            return Image(systemName : "cloud.fill")
            
            
        case "09d" :
            return Image(systemName : "cloud.drizzle.fill")
        case "09n" :
            return Image(systemName : "cloud.drizzle.fill")
            
            
        case "10d" :
            return Image(systemName : "cloud.heavyrain.fill")
        case "010n" :
            return Image(systemName : "cloud.heavyrain.fill")
            
            
        case "11d" :
            return Image(systemName : "cloud.bolt.fill")
        case "11n" :
            return Image(systemName : "cloud.bolt.fill")
            
        case "13d" :
            return Image(systemName : "cloud.snow.fill")
        case "13n" :
            return Image(systemName : "cloud.snow.fill")
            
        case "50d" :
            return Image(systemName : "cloud.fog.fill")
        case "50n" :
            return Image(systemName : "cloud.fog.fill")
            
        default:
            return Image(systemName : "sun.max.fill")

        }
        
    }
    
    
}

