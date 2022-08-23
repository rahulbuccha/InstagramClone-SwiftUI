//
//  StoryCells.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct StoryCells: View {
     //MARK: -Property
    
    let user: Profiles
    
    
     //MARK: -Body
    var body: some View {
        VStack {
            HStack {
                Image(user.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .cornerRadius(80)
                    .overlay(
                        Circle()
                        .stroke(
                            LinearGradient(colors: [.blue, .purple, .red, .pink, .yellow, .orange ], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.6
                                )//:stroke
                                    .frame(width: 90, height: 90)
                        )//:Overlay
                }//:HStack
                .padding(.top, 10)

            Text(user.name)
                .font(.caption)
            
        }
    }
}

 //MARK: -Preview
struct StoryCells_Previews: PreviewProvider {
    static var previews: some View {
        StoryCells(user: users[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
