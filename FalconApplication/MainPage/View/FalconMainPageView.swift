//
//  FalconMainPageView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import SwiftUI

struct FalconMainPageView: View {
    
    
    @State private var selectedItem: FalconScrollerViewModel = .weather

    @ObservedObject var viewModel = WeatherViewViewModel()
    
    @Namespace var animation
    
//    @FocusState var doneButton : Bool

    
    var body: some View {
        

        // GeometryReader for avoiding keyboeard from push my view
        GeometryReader { geo in
            ZStack {

                VStack{
                    VStack {
                        
                        segmentView
                        
                        Text("AL Aqareb")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .bold()
                            .padding(.top)
                        
                        Text(viewModel.date)
                            .font(.system(size: 16))
                            .fontWeight(.thin)
                            .foregroundColor(.white.opacity(0.6))
                        
                        //                    HeaderView(viewModel: viewModel)
                        
                        
                        
                        
                        
                    }
                    
                    VStack{
                        
                        if selectedItem == .weather {
                            WeatherCardsView(viewModel: WeatherViewViewModel())
                                .frame(maxHeight: .infinity)
                            
                        } else {
                            DiscoverCardsView(model: CardsBackModel.Shubt)
                                .frame(maxHeight: .infinity)
                        }
                        
                    }
                    
                }
                 

                }
            .fullBackground(imageName: "MainBackground")
        }   .ignoresSafeArea(.keyboard, edges: .bottom)
//            .toolbar{
//                ToolbarItemGroup(placement: .keyboard){
//                    Button("Done"){
//                        doneButton = false
//                    }
//                }
//            }

    }

}


struct FalconMainPageView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}



extension FalconMainPageView {
    
    
 
    var segmentView : some View {
        
        VStack {

            HStack{
                
                ForEach(FalconScrollerViewModel.allCases , id: \.rawValue) { item in
                    VStack {
                        Text(item.type)
                        
                            .font(.subheadline)
                            .fontWeight(selectedItem == item ? .semibold : .regular)
                            .foregroundColor(selectedItem == item ? .white: .gray)
                        
                        if selectedItem == item {
                            Capsule()
                                .frame(height: 2)
                                .foregroundColor(.white)
                            
                            // Custom animation effect
                                .matchedGeometryEffect(id: "Filter", in: animation)
                        } else {
                            Capsule()
                                .foregroundColor(.clear)
                                .frame(height: 2)
                            
                        }
                        
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedItem = item
                        }
                    }
                }
                
                
            }
            
            .frame(height: 60)
        .padding(.horizontal, 60)

        }


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
