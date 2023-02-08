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
            
            VStack(alignment: .center){
                dailyCell(weather: weather)
            }
        }
    }
    
    private func dailyCell(weather : WeatherDaily) -> some View {
        VStack(alignment: .center) {
            
            HStack{
                Spacer()

                Text(viewModel.getDayFor(timestamp: weather.dt))
                Spacer()

                LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                    .frame(width: 30 , height: 30)
                Spacer()

                Text("\(viewModel.getTempFor(temp: weather.temp.min)) | \(viewModel.getTempFor(temp: weather.temp.max))")
                    
                Spacer()

            }.frame(maxWidth: .infinity , maxHeight: .infinity)
                
        }
    }
}

struct DailyWeather_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


