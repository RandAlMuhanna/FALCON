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
    case Khoulaibeen
    case Suhail
    case Wasem





    
    
    var seasonName: String {
        
        get {
            switch(self) {
                
            case .Murbaaniah:
                return LocalizableStrings.murbaaniahLang
            case .Shubt :
                return LocalizableStrings.shubtLang
            case .Aqareb:
                return LocalizableStrings.aqarebLang
            case .Hamemeen:
                return LocalizableStrings.hamemeenLang
            case .Theraaien:
                return LocalizableStrings.theraaienLang
            case .Thuraya:
                return LocalizableStrings.thurayaLang
            case .Tuwaibaa:
                return LocalizableStrings.tuwaibaaLang
            case .Jawzaa:
                return LocalizableStrings.jawzaaLang
            case .Marzam:
                return LocalizableStrings.marzamLang
            case .Khoulaibeen:
                return LocalizableStrings.khoulaibeenLang
            case .Suhail:
                return LocalizableStrings.suhailLang
            case .Wasem:
                return LocalizableStrings.wasemLang
                
            }
        }
    }

    var seasonDuration: String {
        get {
            switch self {
            case .Murbaaniah:
                return LocalizableStrings.murbaaniahDur
            case .Shubt :
                return LocalizableStrings.shubtDur
            case .Aqareb:
                return LocalizableStrings.aqarebDur
            case .Hamemeen:
                return LocalizableStrings.hamemeenDur
            case .Theraaien:
                return LocalizableStrings.theraaienDur
            case .Thuraya:
                return LocalizableStrings.thurayaDur
            case .Tuwaibaa:
                return LocalizableStrings.tuwaibaaDur
            case .Jawzaa:
                return LocalizableStrings.jawzaaDur
            case .Marzam:
                return LocalizableStrings.marzamDur
            case .Khoulaibeen:
                return LocalizableStrings.khoulaibeenDur
            case .Suhail:
                return LocalizableStrings.suhailDur
            case .Wasem:
                return LocalizableStrings.wasemDur

                
                
            }
        }
    }
    
    var seasonTemperature: String {
        get {
            switch self {
            case .Murbaaniah:
                return LocalizableStrings.murbaaniahTemp
            case .Shubt :
                return LocalizableStrings.shubtTemp
            case .Aqareb:
                return LocalizableStrings.aqarebTemp
            case .Hamemeen:
                return LocalizableStrings.hamemeenTemp
            case .Theraaien:
                return LocalizableStrings.theraaienTemp
            case .Thuraya:
                return LocalizableStrings.thurayaTemp
            case .Tuwaibaa :
                return LocalizableStrings.tuwaibaaTemp
            case .Jawzaa :
                return LocalizableStrings.jawzaaTemp
            case .Marzam :
                return LocalizableStrings.marzamTemp
            case .Khoulaibeen:
                return LocalizableStrings.khoulaibeenTemp
            case .Suhail:
                return LocalizableStrings.suhailTemp
            case .Wasem:
                return LocalizableStrings.wasemTemp

                
            }
            }
    }

    var seasonGriculture: String {
            switch self {
            case .Murbaaniah:
                return LocalizableStrings.murbaaniahGri
            case .Shubt :
                return LocalizableStrings.shubtGri
            case .Aqareb:
                return LocalizableStrings.aqarebGri
            case .Hamemeen:
                return LocalizableStrings.hamemeenGri
            case .Theraaien:
                return LocalizableStrings.theraaienGri
            case .Thuraya:
                return LocalizableStrings.thurayaGri
            case .Tuwaibaa :
                return LocalizableStrings.tuwaibaaGri
            case .Jawzaa:
                return LocalizableStrings.jawzaaGri
            case .Marzam:
                return LocalizableStrings.marzamGri
            case .Khoulaibeen:
                return LocalizableStrings.khoulaibeenGri
            case .Suhail:
                return LocalizableStrings.suhailGri
            case .Wasem:
                return LocalizableStrings.wasemGri


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
            case .Khoulaibeen: return "Koulaibeen"
            case .Suhail: return "Suhail"
            case .Wasem: return "Wasem"

            }
    }

    
}

