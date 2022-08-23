//
//  FeedTabBarView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 10/08/22.
//

import SwiftUI

struct FeedTabBarView: View {
     //MARK: - Property
    
    let user: Profiles
    
     //MARK: - Body
    var body: some View {
            HStack {
                    HStack(spacing: 20) {
                        Image(user.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                            .overlay(
                                Circle()
                                .stroke(
                                    LinearGradient(colors: [.blue, .purple, .red, .pink, .yellow, .orange ], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1.5
                                        )//:stroke
                                            .frame(width: 45, height: 45)
                                )//:Overlay
                        Text(user.name)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        }//:HStack
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                    .rotationEffect(Angle(degrees: -90))
                }//:HStack
                .padding(.horizontal, 8)
            .padding(.vertical, 12)
        }
}

 //MARK: - Preview
struct FeedTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        FeedTabBarView(user: users[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
