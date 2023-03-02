//
//  CityView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 17/07/1444 AH.
//

import SwiftUI

struct CityView: View {
    
    @ObservedObject var viewModel : WeatherViewViewModel
    
    var body: some View {
        
        VStack{
       
            ScrollView(showsIndicators: false) {
                
                
                TodayWeatherView(viewModel: viewModel)
                
                DailyWeather(viewModel: viewModel)
                
            }.foregroundColor(.white)
        }
        .frame(width: 340 , height: 659)
//            .background(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
//            .cornerRadius(20)
//            .preferredColorScheme(.light)
    }
    
//    func sharedScreen(info : String){
//        let infoU = info
//        let av = UIActivityViewController(activityItems: [infoU], applicationActivities: nil)
//        UIApplication.shared.windows.first?.rootViewController?.present(av ,animated: true,completion: nil)
//        if UIDevice.current.userInterfaceIdiom ==.pad{
//            av.popoverPresentationController?.sourceView = UIApplication.shared.windows.first
//            av.popoverPresentationController?.sourceRect = CGRect(x:UIScreen.main.bounds.width/2.1,y: UIScreen.main.bounds.height/ 1.3,width:200,height: 200)
//        }
//
//
//    }
    
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView(viewModel: WeatherViewViewModel())
    }
}


