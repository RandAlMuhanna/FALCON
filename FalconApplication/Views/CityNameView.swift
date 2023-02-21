//
//  CityNameView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 28/07/1444 AH.
//

import SwiftUI

struct CityNameView: View {
    var city : String
    
    
    var body: some View {
        HStack{
            VStack(alignment: .center, spacing: 10){
                Text(city)
                
                                           .font(.system(size: 36))
                                           .fontWeight(.regular)
                                           .foregroundColor(.white)
                
                
                
            }
            
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}
