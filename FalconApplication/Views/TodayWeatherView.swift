//
//  TodayWeatherView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import SwiftUI


let boxGradient = LinearGradient(
    colors: [Color(red: 235 / 255, green: 255 / 255, blue: 255 / 255),Color(red: 18 / 255, green: 4 / 255, blue: 29 / 255)],
    
    startPoint: .top, endPoint: .bottom)

struct TodayWeatherView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel
    var body: some View {
        
        VStack(spacing:8){
            
//            Text(viewModel.city)
//                .font(.largeTitle)
            
                LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                    .frame(width: 100 , height: 100)
                
                VStack{
                    
                    Text("\(viewModel.temperature) C")
                    Text(viewModel.condition)
                }
            
            ScrollView(.horizontal) {
                
                HStack{
                    
                    widgetView(image: "wind", title: "\(viewModel.windSpeed)mi/hr")
                  
                    widgetView(image: "drop", title: "\(viewModel.humidity)")
                    
                    widgetView(image: "umbrella", title: "\(viewModel.rainChance)")
                   
                }
                    
                  
            }
            
        }
        
    }
    
    private func widgetView(image : String ,  title : String) -> some View {
        VStack{
            Image(systemName: image)
                .padding()
            
            Text(title)
        }.frame(width: 164 , height: 164)
            .background(boxGradient.opacity(50))
            .cornerRadius(22)
        
    }
}

struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
