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
        
        
        
        VStack(alignment: .center , spacing: 18){

            ForEach(viewModel.weather.daily) { weather in

                VStack(alignment: .center){
                    dailyCell(weather: weather)
                }
            }
        }.padding()
            .frame(width: 308 , height: 300)
        .dailyWeatherBackground(imageName: "GlassBox")
            .cornerRadius(20)
            .padding(.horizontal)
            
    }
    
    private func dailyCell(weather : WeatherDaily) -> some View {
        
        VStack {
            
            HStack(spacing:48){
              
// Add maxWidth . infinity after items to align all items on the same line
                
                Text(viewModel.getDayFor(timestamp: weather.dt))
                    .frame(maxWidth: .infinity, alignment: .center)

                VStack{
                    LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                        .frame(width: 33 , height: 33)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
              

                Text("\(viewModel.getTempFor(temp: weather.temp.min)) | \(viewModel.getTempFor(temp: weather.temp.max))°")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(.white.opacity(0.6))
              

            }
            
                
        }
    }
}

struct DailyWeather_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}


public extension View {
    func dailyWeatherBackground(imageName: String) -> some View {
       return background(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
       )
    }
}
