//
//  NavigationTabBarView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct NavigationTabBarView: View {
     //MARK: - Property
    
    
     //MARK: - Body
    var body: some View {
        HStack {
            Image("Instagram Logo")
                .scaledToFit()
                .padding(.leading, 10)
            
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "plus.app")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.trailing, 10)
            })
            
            Button(action: {}, label: {
                Image(systemName: "paperplane")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.trailing, 10)
                    
            })
        }//:HStack
        .padding(.top, 20)
    }
}


 //MARK: - Preview
struct NavigationTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
