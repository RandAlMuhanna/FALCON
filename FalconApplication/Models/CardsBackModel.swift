//
//  CardsBackModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 23/07/1444 AH.
//


import Foundation


enum CardsBackModel: String , CaseIterable {
    
    case Murbaaniah
    case Shubt
    case Aqareb
    case Hamemeen
    case Theraaien
    case Thuraya
    case Tuwaibaa
    case Jawzaa
    case Marzam
    case Koulaibeen
    case Suhail
    case Wasem





    
    
    var seasonName: String {
        
        switch self {
        case .Murbaaniah: return "AL Murba’aniah"
        case .Shubt : return "AL Shubt"
        case .Aqareb: return "AL Aqareb"
        case .Hamemeen: return "AL Hamemeen"
        case .Theraaien: return "AL Thera’aien"
        case .Thuraya: return "AL-Thuraya"
        case .Tuwaibaa: return "AL-Tuwaiba’a"
        case .Jawzaa: return "AL-Jawzaa"
        case .Marzam: return "AL-Marzam"
        case .Koulaibeen: return "AL-Koulaibeen"
        case .Suhail: return "Suhail"
        case .Wasem: return "AL-Wasem"

        }
    }
    

    var seasonDuration: String {
            switch self {
            case .Murbaaniah: return "(December 7th - January 14th)"
            case .Shubt : return "(January 15th - February 9th)"
            case .Aqareb: return "(February 10th - March 20th)"
            case .Hamemeen: return "(March 21st - April 15th)"
            case .Theraaien: return "(April 16th - May 11th)"
            case .Thuraya: return "(May 12th and - June 19th)"
            case .Tuwaibaa : return "(June 20 - July 2nd)"
            case .Jawzaa: return "(July 3rd - July 28)"
            case .Marzam: return "(July 29th - August 10th)"
            case .Koulaibeen: return "(August 11th - August 23rd)"
            case .Suhail: return "(August 24th - October 15th)"
            case .Wasem: return "(October 16th - December 6th)"


            }
    }
    
    var seasonTemperature: String {
            switch self {
            case .Murbaaniah: return "• At the beginning of Almurbaaniah It gets cold."
            case .Shubt : return "• It gets colder and fog forms in the morning."
            case .Aqareb: return "• End of winter,winds are strong and the rains are frequent."
            case .Hamemeen: return "• It's getting warmer, the trees are greener, and insects are out from their lairs."
            case .Theraaien: return "• The weather is mild at night and tends to be hot at noon."
            case .Thuraya: return "• The weather tends to be hot."
            case .Tuwaibaa : return "• The weather is very hot during the day."
            case .Jawzaa : return "• The heat increase and the toxins and sandstorms abound."
            case .Marzam : return "• The heat increase and the toxins and sandstorms abound."
            case .Koulaibeen: return "• Nice weather in the evening."
            case .Suhail: return "• The night is getting colder and it is still hot during the day."
            case .Wasem: return "• The weather is mild during the day and cool at night."


            }
    }

    var seasonGriculture: String {
            switch self {
            case .Murbaaniah: return "• Wheat and barley are grown in the north of the kingdom."
            case .Shubt : return "• Nothing is planted in it due to its coldness."
            case .Aqareb: return "• The first three days of it are part of the (seed of the six) to plant all trees and plants."
            case .Hamemeen: return "• Rice is grown and wheat is harvested."
            case .Theraaien: return "• It is advisable to pollinate palm trees."
            case .Thuraya: return "• Corn and peanuts are grown in it"
            case .Tuwaibaa : return "• Zucchini, parsley and watercress are grown in it."
            case .Jawzaa: return "• it is good to dive to extract pearls."
            case .Marzam: return "• There are plenty of dates and summer fruits."
            case .Koulaibeen: return "• Fall planting begins."
            case .Suhail: return "• Pomegranates abound and rice is harvested."
            case .Wasem: return "• Truffles and wild herbs are grown."

            }
    }
    
    var seasonImages: String {
            switch self {
            case .Murbaaniah: return "Murbaniah"
            case .Shubt: return "Shubt"
            case .Aqareb: return "Aqareb"
            case .Hamemeen: return "Hamemeen"
            case .Theraaien: return "Theraien"
            case .Thuraya: return "Thuraya"
            case .Tuwaibaa: return "Tuwaiba"
            case .Jawzaa: return "Jawzaa"
            case .Marzam: return "Marzam"
            case .Koulaibeen: return "Koulaibeen"
            case .Suhail: return "Suhail"
            case .Wasem: return "Wasem"

            }
    }

    
}

