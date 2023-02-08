//
//  DailyWeather.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import SwiftUI

struct DailyWeather: View {
    @ObservedObject var viewModel : WeatherViewViewModel
    var body: some View {
        ForEach(viewModel.weather.daily) { weather in
            
            LazyVStack{
                dailyCell(weather: weather)
            }
        }
    }
    
    private func dailyCell(weather : WeatherDaily) -> some View {
        HStack(spacing : 30){
            
            Text(viewModel.getDayFor(timestamp: weather.dt))
                .frame(width:100)
           

//            viewModel.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.fill")
            
            LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                .frame(width: 30 , height: 30)
            
            Text("\(viewModel.getTempFor(temp: weather.temp.min)) | \(viewModel.getTempFor(temp: weather.temp.max))")
                .frame(width:150)
            
        
            
           
        }
//        .frame(maxWidth: .infinity , maxHeight: .infinity)
        
    }
}

struct DailyWeather_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
