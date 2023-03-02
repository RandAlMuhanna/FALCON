//
//  FalconMainPageView.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import SwiftUI


struct LocalizableStrings {
    
    // Scroll View
    static let weatherLang = NSLocalizedString("Weather", comment: "")
    static let seasonsLang = NSLocalizedString("Seasons", comment: "")
    
    // Seasons name
    static let murbaaniahLang = NSLocalizedString("AL Murba’aniah", comment: "")
    static let shubtLang = NSLocalizedString("AL Shubt", comment: "")
    static let aqarebLang = NSLocalizedString("AL Aqareb", comment: "")
    static let hamemeenLang = NSLocalizedString("AL Hamemeen", comment: "")
    static let theraaienLang = NSLocalizedString("AL Thera’aien", comment: "")

    static let thurayaLang = NSLocalizedString("AL-Thuraya", comment: "")
    static let tuwaibaaLang = NSLocalizedString("AL-Tuwaiba’a", comment: "")
    static let jawzaaLang = NSLocalizedString("AL-Jawzaa", comment: "")
    
    static let marzamLang = NSLocalizedString("AL-Marzam", comment: "")
    static let khoulaibeenLang = NSLocalizedString("AL-Khoulaibeen", comment: "")
    static let suhailLang = NSLocalizedString("Suhail", comment: "")
    static let wasemLang = NSLocalizedString("AL-Wasem", comment: "")

    
    // Seasons duration
    static let murbaaniahDur = NSLocalizedString("(December 7th - January 14th)", comment: "")
    static let shubtDur = NSLocalizedString("(January 15th - February 9th)", comment: "")
    static let aqarebDur = NSLocalizedString("(February 10th - March 20th)", comment: "")
    static let hamemeenDur = NSLocalizedString("(March 21st - April 15th)", comment: "")
    static let theraaienDur = NSLocalizedString("(April 16th - May 11th)", comment: "")

    static let thurayaDur = NSLocalizedString("(May 12th - June 19th)", comment: "")
    static let tuwaibaaDur = NSLocalizedString("(June 20 - July 2nd)", comment: "")
    static let jawzaaDur = NSLocalizedString("(July 3rd - July 28)", comment: "")
    
    static let marzamDur = NSLocalizedString("(July 29th - August 10th)", comment: "")
    static let khoulaibeenDur = NSLocalizedString("(August 11th - August 23rd)", comment: "")
    static let suhailDur = NSLocalizedString("(August 24th - October 15th)", comment: "")
    static let wasemDur = NSLocalizedString("(October 16th - December 6th)", comment: "")
    
    // Seasons temperature
    static let murbaaniahTemp = NSLocalizedString("• At the beginning of Almurbaaniah It gets cold.", comment: "")
    static let shubtTemp = NSLocalizedString("• It gets colder and fog forms in the morning.", comment: "")
    static let aqarebTemp = NSLocalizedString("• End of winter, winds are strong and the rains are frequent.", comment: "")
    static let hamemeenTemp = NSLocalizedString("• It's getting warmer, the trees are greener, and insects are out from their lairs.", comment: "")
    static let theraaienTemp = NSLocalizedString("• The weather is mild at night and tends to be hot at noon.", comment: "")

    static let thurayaTemp = NSLocalizedString("• The weather tends to be hot.", comment: "")
    static let tuwaibaaTemp = NSLocalizedString("• It has the longest day and the shortest night.", comment: "")
    static let jawzaaTemp = NSLocalizedString("• The heat increase and the toxins and sandstorms abound.", comment: "")
    
    static let marzamTemp = NSLocalizedString("• The heat increase and the toxins and sandstorms abound.", comment: "")
    static let khoulaibeenTemp = NSLocalizedString("• Nice weather in the evening.", comment: "")
    static let suhailTemp = NSLocalizedString("• The night is getting colder and it is still hot during the day.", comment: "")
    static let wasemTemp = NSLocalizedString( "• The weather is mild during the day and cool at night.", comment: "")
    
    
    // Season Griculture
    static let murbaaniahGri = NSLocalizedString("• Wheat and barley are grown in the north of the kingdom.", comment: "")
    static let shubtGri = NSLocalizedString("• Nothing is planted in it due to its coldness.", comment: "")
    static let aqarebGri = NSLocalizedString("• Peach, pomegranate, apricot and almond leaves" , comment: "")
    static let hamemeenGri = NSLocalizedString("• Rice is grown and wheat is harvested.", comment: "")
    static let theraaienGri = NSLocalizedString("• It is advisable to pollinate palm trees.", comment: "")

    static let thurayaGri = NSLocalizedString("• Corn and peanuts are grown in it", comment: "")
    static let tuwaibaaGri = NSLocalizedString("• Zucchini, parsley, and watercress are grown in it.", comment: "")
    static let jawzaaGri = NSLocalizedString("• Pumpkins, zucchini and cucumbers are grown in it", comment: "")
    
    static let marzamGri = NSLocalizedString("• There are plenty of dates and summer fruits.", comment: "")
    static let khoulaibeenGri = NSLocalizedString("• Fall planting begins.", comment: "")
    static let suhailGri = NSLocalizedString("• Winter vegetables are sown", comment: "")
    static let wasemGri = NSLocalizedString("• Truffles and wild herbs are grown.", comment: "")
    
    
 
}




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
