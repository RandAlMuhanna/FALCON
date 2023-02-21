//
//  CardsBackModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 23/07/1444 AH.
//


import Foundation


enum CardsBackModel: Int , CaseIterable {
    
    case Murbaaniah
    case Shubt
    case Aqareb
    case Hamemeen
    case Theraaien


    
    
    var seasonName: String {
        
        switch self {
        case .Murbaaniah: return "AL Murba’aniah"
        case .Shubt : return "AL Shubt"
        case .Aqareb: return "AL Aqareb"
        case .Hamemeen: return "AL Hamemeen"
        case .Theraaien: return "AL Thera’aien"

        }
    }
    

    var seasonDuration: String {
            switch self {
            case .Murbaaniah: return "(Starts on December 7th and ends on January 14th)"
            case .Shubt : return "(starts on January 15th and ends on February 9th)"
            case .Aqareb: return "(starts on February 10th and ends on March 20th)"
            case .Hamemeen: return "(starts on March 21st and ends on April 15th)"
            case .Theraaien: return "(starts on April 16th and ends on May 11th)"


            }
    }
    
    var seasonTemperature: String {
            switch self {
            case .Murbaaniah: return "• At the beginning of Almurbaaniah It gets cold."
            case .Shubt : return "• It gets colder and fog forms in the morning."
            case .Aqareb: return "• End of winter,winds are strong and the rains are frequent."
            case .Hamemeen: return "• It's getting warmer, the trees are greener, and insects are out from their lairs."
            case .Theraaien: return "• The weather is mild at night and tends to be hot at noon."
           

            }
    }

    var seasonGriculture: String {
            switch self {
            case .Murbaaniah: return "• Wheat and barley are grown in the north of the kingdom."
            case .Shubt : return "• Nothing is planted in it due to its coldness."
            case .Aqareb: return "• The first three days of it are part of the (seed of the six) to plant all trees and plants."
            case .Hamemeen: return "• Rice is grown and wheat is harvested."
            case .Theraaien: return "• It is advisable to pollinate palm trees."
           

            }
    }
    
    

    
}

