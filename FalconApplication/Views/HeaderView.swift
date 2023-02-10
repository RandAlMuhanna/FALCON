//
//  HeaderView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 17/07/1444 AH.
//

import SwiftUI

struct HeaderView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel
    @State private var SearchFor = "Riyadh"
    
    var body: some View {
        
        VStack {
            HStack{
                
                TextField("" , text: $SearchFor)
                    .padding()
                
                Button{
                    viewModel.city = SearchFor
                } label: {
                   
                        Image(systemName: "location.fill")
                        .foregroundColor(.white)
                }
                .frame(width: 25 , height: 25)
                .padding()
            }
        } .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8).opacity(0.1))
            .frame(height: 40)
            .cornerRadius(22)
            .padding(.horizontal)
            .padding(.top,35)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


