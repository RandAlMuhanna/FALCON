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
            DiscoverCardsView(model: .Shubt)
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
                            VStack(spacing:16) {
                                VStack(alignment: .center){
                                    Text(item.seasonName)
                                        .font(.title)

                                    Text(item.seasonDuration)
                                        .font(.caption)
                                }.multilineTextAlignment(.center)
                                
                                VStack{
                                    Text(item.seasonTemperature)
                                    Text(item.seasonGriculture)
                                    
                                }.font(.caption)
                                        .multilineTextAlignment(.leading)
                                
                                    
                                
                            }.foregroundColor(.white)
                        }
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .frame(width: 312.38 , height: 424.99)
                } else {
                    Text("")
                        .frame(width: 312.38 , height: 424.99)
                    
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .background(Color(red: 0.596078431372549, green: 0.5176470588235295, blue: 0.7372549019607844)).opacity(0.8)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        //.frame(maxHeight: .infinity, alignment: .top)
                        .padding()
                }
                
                
                
            }
                              
            
            .rotation3DEffect(.degrees(isTapped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation {
                    isTapped.toggle()
                }
            }
        }
    }
}

