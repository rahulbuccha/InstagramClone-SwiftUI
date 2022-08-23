//
//  ProfileTabView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct ProfileTabView: View {
     //MARK: - Property
    
    
     //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                TopProfileTab()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10){
                        ForEach(users) { user in
                            ProfileStoryCells(user: user)
                        }//:Loop
                    }//:HStack
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                }//ScrollView
                Divider()
                
                PostProfileView()
            }
         
        } //:VStack
        
        
    }
}

 //MARK: - Preview
struct ProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabView()
    }
}
