//
//  SearchLabels.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct SearchLabels: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8){
                Labels(text: "Design")
                Labels(text: "Logo")
                Labels(text: "Sports")
                Labels(text: "Anime")
                Labels(text: "Lobsters")
                Labels(text: "Travel")
                Labels(text: "NewSports")
                Labels(text: "Ruggby")
                
            }//:HStack
            .padding(.horizontal, 16)
            .padding(.top, 10)
            .frame(width: .infinity, height: 50)
        }
    }
}

struct SearchLabels_Previews: PreviewProvider {
    static var previews: some View {
        SearchLabels()
    }
}
