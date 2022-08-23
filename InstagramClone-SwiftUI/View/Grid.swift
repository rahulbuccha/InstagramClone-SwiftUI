//
//  Grid.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct Grid: View {
     //MARK: - Property
//    let user: Profiles
    
    var images: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
     //MARK: - Body
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
    }
}

 //MARK: - Preview
struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
