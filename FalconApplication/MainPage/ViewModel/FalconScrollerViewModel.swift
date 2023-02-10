//
//  FalconScrollerViewModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import Foundation

enum FalconScrollerViewModel :Int , CaseIterable{
    
    case weather
    case discover
    
    
    var type : String{
        switch self {
        case .weather: return "Weather"
        case .discover: return "Discover"

            
        }
        
        
    }
}
