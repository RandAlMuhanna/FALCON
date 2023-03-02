//
//  DiscoverCardsView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 21/07/1444 AH.
//

import SwiftUI


struct DiscoverCardsView: View {
    
    var model: CardsBackModel
    
    
    var body: some View {
        
        ScrollView(.horizontal , showsIndicators: true){
            HStack(spacing:32) {
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
                            
                            VStack{
                                
                                VStack(alignment:.center ,spacing:16){
                                    Text(item.seasonName)
                                        .font(.system(size: 32))
                                   
                                    Text(item.seasonDuration)
                                        .font(.system(size: 18))
                                        .foregroundColor(.white.opacity(0.5))
                                        .bold()
                                }   .padding()                     .multilineTextAlignment(.center)

                                VStack(alignment:.leading,spacing:16){
                                  
                                        
                                        Text(item.seasonTemperature)
                                    
                                    Text(item.seasonGriculture)
                                        .font(.system(size: 18))
                                        .multilineTextAlignment(.leading)
                                    
                                }.padding(.horizontal)
                                
                            }.foregroundColor(.white)
                        }
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .frame(width: 312.38 , height: 424.99)

                } else {
                    Image(item.seasonImages)
                        .resizable()
                        .scaledToFill()
                        .opacity(0.7)
                        .frame(width: 312.38 , height: 424.99)
                        .background(Color(red: 0.596078431372549, green: 0.5176470588235295, blue: 0.7372549019607844)).opacity(0.8)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                       // .padding()
                    
                    Text(item.seasonName)
                        .frame(width: 201 , height: 62)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color(red: 0.596078431372549, green: 0.5176470588235295, blue: 0.7372549019607844)).opacity(0.8)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .padding(.bottom,300)
                }
                
                
                
                
            }    .padding(.top , -60)
               
                              
            
            .rotation3DEffect(.degrees(isTapped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation {
                    isTapped.toggle()
                }
            }
        }
    }
}

