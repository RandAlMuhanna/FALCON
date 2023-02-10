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
            

            Text(viewModel.city)
                .font(.system(size: 30))
                .fontWeight(.regular)
                .padding(.top,15)
            
            Text("\(viewModel.temperature) °")
                .font(.system(size: 60))
                .fontWeight(.thin)
            
            
            Text(viewModel.condition)
                .foregroundColor(.white.opacity(0.6))
            
//                LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
//                    .frame(width: 100 , height: 100)
//
               
            VStack(alignment: .leading){
                    
                    widgetView(image: "sunrise", title: "SUNRISE", value: "\(viewModel.windSpeed)mi/hr")
                  
            }
            .padding(.horizontal)
            
        }.foregroundColor(.white)

        
    }
    
    private func widgetView(image : String ,  title : String , value : String) -> some View {
        
        VStack(alignment: .leading){
            HStack(spacing: 4){
                Image(systemName: image)
                  
                Text(title)
                
            }.foregroundColor(.white.opacity(0.5))
                .padding(.bottom)
            
            VStack{
                Text(value)
            }
            
        }.frame(width: 308 , height: 151)
            .detailsBackground(imageName: "GlassBox")
        //            .background(boxGradient.opacity(50))
            .cornerRadius(20)
    }
}



struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
