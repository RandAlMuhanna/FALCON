//
//  FalconMainPageView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import SwiftUI

struct FalconMainPageView: View {
    
    
    @State private var selectedItem: FalconScrollerViewModel = .weather

    @Namespace var animation
    
    var body: some View {
        
        ZStack {

            VStack {

                segmentView
                
                Spacer()
               
            }
            
            if selectedItem == .weather {
                WeatherCardsView(viewModel: WeatherViewViewModel())
                    .frame(maxHeight: .infinity)
            } else {
                DiscoverCardsView(model: CardsBackModel.Riyadh)
                    .frame(maxHeight: .infinity)
            }
        }
        .fullBackground(imageName: "Background")
    }
}


struct FalconMainPageView_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}



extension FalconMainPageView {
    
    
 
    var segmentView : some View {
        
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
        
        // To remove extra space on header
//        VStack(spacing:32){
//            .padding()
//                .padding(.horizontal,50)
//          //  .overlay(Divider().offset(x:0 , y: 17))
//
//
//
//
//        }
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
