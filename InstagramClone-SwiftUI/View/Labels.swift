//
//  SearchLabels.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct Labels: View {
     //MARK: - Property
    var text: String = "Design"
    
     //MARK: - Body
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.secondary, lineWidth: 1)
            )
    }
}

 //MARK: - Preview
struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
        