//
//  TodayWeatherView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel

    
    var body: some View {
        
        VStack(alignment: .center , spacing:8){
            

            CityNameView(city: viewModel.city)
                .padding(.top)

            Text("\(viewModel.temperature)°")
                .font(.system(size: 60))
                .fontWeight(.thin)
            
            
            Text(viewModel.condition)
                .foregroundColor(.white.opacity(0.6))

               
            HStack{

                    widgetView(image: "wind", title: "Wind", value: "\(viewModel.windSpeed)m/s")
//                Spacer()
                widgetView(image: "cloud.rain", title: "Rain", value: "\(viewModel.rainChance)%")
//                Spacer()

                widgetView(image: "humidity", title: "Humidity", value: "\(viewModel.humidity)")
                widgetView(image: "thermometer.low", title: "Feels Like", value: "\(viewModel.feelsLike)°")


            }
            .frame(width: 308 , height: 151)
           
                .detailsBackground(imageName: "GlassBox")
            //            .background(boxGradient.opacity(50))
                .cornerRadius(20)
            .padding(.horizontal)
            
        }.foregroundColor(.white)

        
    }
    
    private func widgetView(image : String ,  title : String , value : String) -> some View {
        

        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8).opacity(0.5))
            .overlay {
                VStack(spacing:8){
                    
                    VStack(spacing:4){
                        Image(systemName: image)
                        Text(title)
                    }.font(.caption2)
                        .foregroundColor(.white.opacity(0.6))
                  
                    Text(value)
                        .font(.caption)
                        .bold()
                }

            }.frame(width: 60, height: 120)
    }
}



struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}


public extension View {
    func detailsBackground(imageName: String) -> some View {
       return background(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
       )
    }
}
