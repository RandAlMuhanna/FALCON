//
//  WeatherCardsView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import SwiftUI

struct WeatherCardsView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel

    var body: some View {
        VStack{
            
            Text("Check the weather")
                .font(.system(size: 32))
                .foregroundColor(.white)
            
            VStack(spacing:20){
                Text(viewModel.city)
                    .font(.system(size: 36))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                Text("\(viewModel.temperature) °")
                    .font(.system(size: 60))
                    .fontWeight(.thin)
                    .foregroundColor(.white)

                
                Text(viewModel.condition)
                    .foregroundColor(.white.opacity(0.6))
                
                
                    LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                        .frame(width: 100 , height: 100)
    
                
                Text("AL Murba’aniah")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .bold()
                
            }.frame(width: 312.38 , height: 424.99)
                .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
                .cornerRadius(20)
        }
    }
    
    
    private func MinMax(weather : WeatherDaily) -> some View {
        
        VStack(alignment: .center) {
            
            HStack{
                Spacer()
               
                Text("H:\(viewModel.getTempFor(temp: weather.temp.min)) | L:\(viewModel.getTempFor(temp: weather.temp.max))°c")
                    .foregroundColor(.white)
                Spacer()

            }
            
                
        }
    }

}

//struct WeatherCardsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FalconMainPageView()
//    }
//}
