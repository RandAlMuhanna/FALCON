//
//  CardsBackModel.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 23/07/1444 AH.
//


import Foundation


enum CardsBackModel: Int , CaseIterable {
    
    case Qassim
    case Taif
    case Riyadh
    case Umluj
    case Tabuk
    case Asir
    case Shaqra

    var cityImage: String {
        
        switch self {
        case .Qassim:   return "AlQassim"
        case .Taif : return "Taif"
        case .Riyadh:   return "Riyadh"
        case .Umluj:  return "Umluj"
        case .Tabuk:   return "Tabuk"
        case .Asir:    return "Asir"
        case .Shaqra:   return "Shaqra"

        }
    }
    
    
    var cityName: String {
        
        switch self {
        case .Qassim: return "Qassim"
        case .Taif : return "Taif"
        case .Riyadh: return "Riyadh"
        case .Umluj: return "Umluj"
        case .Tabuk: return "Tabuk"
        case .Asir: return "Asir"
        case .Shaqra: return "Shaqra"

        }
    }
    
    
    var cityFestival: String {
            switch self {
            case .Qassim: return "Qassim dates festival"
            case .Taif : return "Taif rose festival"
            case .Riyadh: return "Edge of the world"
            case .Umluj: return "Saudi Maldives"
            case .Tabuk: return " Jabal Al Lawz "
            case .Asir: return "AL Soudah"
            case .Shaqra: return "Pepper festival"


            }
    }
    
 
    var cityDetails: String {
            switch self {
            case .Qassim: return "The dates season begins in mid-August/August each year, with a harvest celebration that lasts 36 days and includes more than 45 products of various types of dates."
            case .Taif : return "Taif's rose is celebrated each year during the festival, which takes place in March and April at King Faisal Park in Qadeera."

            case .Riyadh: return "Mountain climbing and hiking enthusiasts will love Edge of the World. Discover the breathtaking off-cliff scenery."
            case .Umluj: return "Located in Tabuk's northwestern region. It is well-known for its tranquil landscape, white sandy beaches, pristine clear turquoise waters, and uninhabited islands."
            case .Tabuk: return "Jabal Al Lawz, is one such beautiful mountain located in Tabuk Province. It has the highest elevation points in the region, offering mesmerizing views of the nearby area from the summit."
            case .Asir: return " Al Soudah is a perfect blend of fascinating history, rich culture, and breathtaking natural beauty."
            case .Shaqra: return "Shaqra"


            }
    }
    
}

