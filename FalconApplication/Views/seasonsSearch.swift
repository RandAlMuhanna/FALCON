//
//  seasonsSearch.swift
//  FalconApplication
//
//  Created by Rand AlMuhanna on 05/08/1444 AH.
//

import SwiftUI

struct seasonsSearch: View {
    
    @State var serchFor = ""

    @FocusState private var nameIsFocused : Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct seasonsSearch_Previews: PreviewProvider {
    static var previews: some View {
        FalconMainPageView()
    }
}
