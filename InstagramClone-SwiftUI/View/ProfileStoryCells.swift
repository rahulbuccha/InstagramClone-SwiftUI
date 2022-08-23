//
//  ProfileStoryCells.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct ProfileStoryCells: View {
     //MARK: -Property
    
    let user: Profiles
    
    
     //MARK: -Body
    var body: some View {
        VStack {
            HStack {
                Image(user.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .cornerRadius(70)
                    .overlay(
                        Circle()
                        .stroke(
                                )//:stroke
                                    .frame(width: 74, height: 74)
                        )//:Overlay
                }//:HStack
                .padding(.top, 10)
            
        }
    }
}

 //MARK: -Preview
struct ProfileStoryCells_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStoryCells(user: users[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
