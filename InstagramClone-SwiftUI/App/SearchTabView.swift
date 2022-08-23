//
//  SearchTabView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct SearchTabView: View {
     //MARK: - Property
    @State var text: String
    
    
     //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0){
               SearchInput(text: text)
                    .padding(.horizontal, 16)
                
                SearchLabels()
                    .padding(.bottom, 4)
                
                Grid()
                
                Spacer()
            }//:VStack
        }//:Scroll
    }
}

 //MARK: - Preview
struct SearchTabView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView(text: "")
    }
}
