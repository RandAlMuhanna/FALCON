//
//  WeatherCardsView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import SwiftUI

struct WeatherCardsView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel
    
    @State var tappedCard = false
    
    
    var body: some View {
        ZStack{
            VStack(spacing:25) {
                citiesSearch(viewModel: viewModel)
                
                if viewModel.weather.current.temp != 0 {
                    
                    
                    if !tappedCard {
                        
                        VStack(spacing:32){
                            
                            VStack(spacing:10){
                                
                                CityNameView(city: viewModel.city)
                                
                                Text("\(viewModel.temperature)°")
                                    .font(.system(size: 60))
                                    .fontWeight(.thin)
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                            VStack(spacing:10){
                                Text(viewModel.condition)
                                    .foregroundColor(.white.opacity(0.6))
                                
                                
                                LottieView(name: viewModel.getLottiAnimation(icon: viewModel.weatherIcons))
                                    .frame(width: 135 , height: 135)
                                
                            }
                            
                            
                        }.frame(width: 312.38 , height: 424.99)
                            .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
                    .cornerRadius(20)
                    
                    .onTapGesture {
                        withAnimation {
                            tappedCard.toggle()
                        }
                    }
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //  .modifier(BlurBackground(showBlur: tappedCard))
                    .padding(.top , -60)
                    }
                }else {
                Spacer()
                if viewModel.didFound{
                    ProgressView("Loading")
                        .scaleEffect(1.5, anchor: .center)
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                    
                } else{
                    Text("Not Found")
                        .foregroundColor(.white)
                }
            }
                Spacer()
            }
                
            if tappedCard {
                
                CityView(viewModel: viewModel)
                    .padding(.bottom, -30)
                    .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
            .cornerRadius(20)
            
            .onTapGesture {
                withAnimation {
                    tappedCard.toggle()
                }
            }
            
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            //  .modifier(BlurBackground(showBlur: tappedCard))
     
                
            }
                        
                    
                    
                    
  
        
            
        }
    }

 
}

struct WeatherCardsView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
            .preferredColorScheme(.light)
    }
}


//struct BlurBackground: ViewModifier {
//    var showBlur: Bool
//
//    func body(content: Content) -> some View {
//        if showBlur {
//            content
//                .background(.ultraThinMaterial)
//        } else {
//            content
//        }
//     }
//
//}
