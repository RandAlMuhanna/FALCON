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
        
        
        ZStack {
            
            if !tappedCard {
                
                VStack(spacing:20){
                    
                   
                    Text(viewModel.city)
                        .font(.system(size: 36))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                    
                    Text("\(viewModel.temperature)°")
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
                    
                
            } else{
                
                CityView(viewModel: viewModel)
            }
            
        }
        .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
        .cornerRadius(20)
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .modifier(BlurBackground(showBlur: tappedCard))
        .onTapGesture {
            withAnimation {
                tappedCard.toggle()
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


struct BlurBackground: ViewModifier {
    var showBlur: Bool
    
    func body(content: Content) -> some View {
        if showBlur {
            content
                .background(.ultraThinMaterial.opacity(0.7))
        } else {
            content
        }
     }
       
}
