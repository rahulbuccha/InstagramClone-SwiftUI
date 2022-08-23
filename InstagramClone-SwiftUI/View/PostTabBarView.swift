//
//  PostTabBarView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct PostTabBarView: View {
     //MARK: - Property
    
    let user: Profiles
    
     //MARK: - Body
    var body: some View {
        VStack(spacing: 0){
            FeedTabBarView(user: user)
            Image(user.image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                }
                Spacer()
                
                Image(systemName: "bookmark")
            }//:HStack
            .font(.system(size: 24))
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            
            BottomHomeTabBarView(user: user)
            
        }//:VStack
    }
    
}

 //MARK: -Preview
struct PostTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        PostTabBarView(user: users[0])
    }
}
