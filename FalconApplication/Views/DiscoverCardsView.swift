//
//  DiscoverCardsView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 21/07/1444 AH.
//

import SwiftUI



struct DiscoverCardsView: View {
    
    var model: CardsBackModel
    
    @State private var selectedCard: CardsBackModel? = nil
    
    
    
    
    var body: some View {
        
        ScrollView(.horizontal , showsIndicators: false){
            HStack(spacing: 15) {
                ForEach(CardsBackModel.allCases , id:\.rawValue) { item in
                    
                    ZStack {
                        FlipCardView(item: item)
                            
                    }
                    
                    
                }
            }
            .frame(height: 600)
            .padding(.horizontal, 25)
       }
//
    }
    
    
    struct DiscoverCardsView_Previews: PreviewProvider {
        static var previews: some View {
            DiscoverCardsView(model: .Riyadh)
        }
    }
    
    
    struct FlipCardView: View {
        var item: CardsBackModel
        @State private var isTapped: Bool = false
        
        var body: some View {
            ZStack {
                if isTapped {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color(red: 0.5647058823529412, green: 0.5803921568627451, blue: 0.8))
                        .overlay {
                            VStack(alignment: .center) {
//
//                                Text(item.cityName)
//                                    .font(.title)
//
                                Text(item.cityFestival)
                                    .font(.title)
                                Text(item.cityDetails)
                                    .font(.caption)
                                
                            }.foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        
                } else {
                    Image(item.cityImage)
                        .resizable()
                        .frame(width: 312.38 , height: 424.99)
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    Text(item.cityName)
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .padding(15)
                        .background(Color(red: 0.596078431372549, green: 0.5176470588235295, blue: 0.7372549019607844)).opacity(0.8)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .frame(maxHeight: .infinity, alignment: .top)
                        .padding(.top, 25)
                }
                
                
                
            }
            .frame(width: 312.38 , height: 424.99)
            .rotation3DEffect(.degrees(isTapped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation {
                    isTapped.toggle()
                }
            }
        }
    }
}

