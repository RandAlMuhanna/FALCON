//
//  FalconScrollerViewModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 18/07/1444 AH.
//

import Foundation

enum FalconScrollerViewModel :Int , CaseIterable{
    
    case weather
    case seasons
    
    
    var type : String{
        
        get {
            switch(self) {
            case .weather:
                return LocalizableStrings.weatherLang
                
            case .seasons:
                return LocalizableStrings.seasonsLang
                
                
            }
        }
        
    }
}
