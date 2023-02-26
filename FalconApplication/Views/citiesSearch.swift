//
//  citiesSearch.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 17/07/1444 AH.
//

import SwiftUI

struct citiesSearch: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel
    
    @State var searchFor = ""
    
    @FocusState private var nameIsFocused: Bool


    
    var body: some View {
        
       
        VStack {
            HStack{
                Image(systemName: "magnifyingglass")
                .foregroundColor(.white.opacity(0.6))
               
                
                TextField("Search for a city", text: $searchFor)
                    .keyboardType(.alphabet)
                
                // Take action directly when user click ENTER
                    .onSubmit {
                               guard searchFor.isEmpty == false else { return }
                        
                        viewModel.city = searchFor
                           }
                    .focused($nameIsFocused)
                
            }
            // Button to delete the text from TextField
            .onAppear {
                UITextField.appearance().clearButtonMode = .whileEditing
            }
            .onChange(of: searchFor){  _ in
                viewModel.weather = WeatherResponse.empty()
                
            }
          
        }
        .padding()
        
         .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8).opacity(0.1))
            .frame(width: 312.38 ,height: 40)
            .cornerRadius(22)
            .padding(.horizontal)
        
                    .toolbar{
                        ToolbarItemGroup(placement: .keyboard){
                            Button("Done"){
                                nameIsFocused = false
                            }
                        }
                    }
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}



