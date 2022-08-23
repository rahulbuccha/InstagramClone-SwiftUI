//
//  ContentView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct ContentView: View {
     //MARK: - Property
    
    
     //MARK: - Body
    var body: some View {
        VStack (spacing: 0){
            NavigationTabBarView()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20){
                            ForEach(users) { user in
                                StoryCells(user: user)
                            }//:Loop
                        }//:HStack
                        .padding(.leading, 10)
                    }//ScrollView
                    Divider()
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 20){
                            ForEach(users) { user in
                                PostTabBarView(user: user)
                            }//:Loop
                        }//:VStack
                    }//:Scroll
                }//:VStack
                .padding(.top, 15)
            }
            
        }
    }
}

 //MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
