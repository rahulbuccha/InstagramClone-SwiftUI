//
//  BottomHomeTabBarView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct BottomHomeTabBarView: View {
     //MARK: - Property
    let user: Profiles
    
     //MARK: - Body
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Liked by Meng and to 454 others \nI miss travelling to Europe")
                    .font(.footnote)
                    .padding(.horizontal, 10)
                
                HStack {
                    HStack{
                        Image(user.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(25)
                            .frame(width: 25, height: 25, alignment: .center)
                            .overlay(
                                Circle()
                                    .stroke()
                                    .frame(width: 26, height: 26)
                            )
                        
                        Text("Add commnet...")
                            .foregroundColor(.secondary)
                            .font(.caption)
                            .padding(.horizontal, 10)
                        
                    }//: HStack
                    
                    Spacer()
                    
                    HStack{
                        Text("😍")
                        Text("😆")
                        Text("🙃")
                        Image(systemName: "plus.circle")
                            .foregroundColor(.secondary)
                    }
                
                }//:HStack
                .padding(.top, 10)
                .padding(.horizontal, 10)
            }//:VStack
        }//: VStack
    
        
       
        
    }
    
}

 //MARK: - Preview
struct BottomHomeTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomHomeTabBarView(user: users[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
