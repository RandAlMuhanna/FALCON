//
//  CityView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 17/07/1444 AH.
//

import SwiftUI

struct CityView: View {
    @ObservedObject var viewModel : WeatherViewViewModel
    
    var body: some View {
        VStack{
            
            CityNameView(city: viewModel.city, date: viewModel.date)
            
            TodayWeatherView(viewModel: viewModel)
                
            DailyWeather(viewModel: viewModel)
        
        }.foregroundColor(.white)
    }
    
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


