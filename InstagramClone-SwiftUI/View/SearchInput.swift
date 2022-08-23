//
//  SearchInput.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct SearchInput: View {
     //MARK: - Property
    @State var text: String
    
     //MARK: - body
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            
            TextField("Search", text: $text)
        }
        .frame(width: .infinity)
        .padding(10)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.8980392156862745)/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
    }
}

 //MARK: - Preview
struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput(text: "")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
