//
//  SplashScreenView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 06/08/1444 AH.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color(red: 61 / 255, green: 59 / 255, blue: 79 / 255),Color(red: 34 / 255, green: 21 / 255, blue: 43 / 255)],
    
    startPoint: .top, endPoint: .bottom)

struct SplashScreenView: View {
    @State var isActive:Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive {
            FalconMainPageView()
        }
        else{
            ZStack{
                
                backgroundGradient
                    .ignoresSafeArea(.all)

                    
                    VStack {
                        Image("Logo3")
                    }
                    
  
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 2)){
                        self.size=0.9
                        self.opacity=1.0
                    }
                }.onAppear{
                    DispatchQueue.main.asyncAfter(deadline:.now()+2.0 )
                    {
                        withAnimation {
                        self.isActive = true
                        }
                    }
                }
            }
        }
        
       
      
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
