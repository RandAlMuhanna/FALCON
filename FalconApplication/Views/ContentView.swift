//
//  ContentView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 16/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = WeatherViewViewModel()
    
    var body: some View {
        ZStack{
            
            
            VStack{
                HeaderView(viewModel: viewModel)
                
                ScrollView(showsIndicators: false){
                    CityView(viewModel: viewModel)
                }
            }
            
            
        } .fullBackground(imageName: "Background")
     
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

public extension View {
    func fullBackground(imageName: String) -> some View {
       return background(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
       )
    }
}



