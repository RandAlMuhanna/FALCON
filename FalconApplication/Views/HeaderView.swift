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
        HStack{
            TextField("" , text: $SearchFor)
                .padding()
            
            Button{
                viewModel.city = SearchFor
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 22)
                        .fill(Color.gray)
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50 , height: 50)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
