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
       
            ScrollView(showsIndicators: false) {
                
                
                TodayWeatherView(viewModel: viewModel)
                
                DailyWeather(viewModel: viewModel)
                
            }.foregroundColor(.white)
        }
        .frame(width: 340 , height: 659)
//            .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
//            .cornerRadius(20)
//            .preferredColorScheme(.light)
    }
    
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}


