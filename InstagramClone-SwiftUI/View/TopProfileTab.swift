//
//  TopProfileTab.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct TopProfileTab: View {
    var body: some View {
        VStack{
            HStack(spacing: 15) {
                Button(action: {}, label: {
                    Text("_profileName")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                })
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "plus.app")
                        .font(.title)
                        .foregroundColor(.primary)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.primary)
                })
            }//: HStack
            .padding(.horizontal)
            .padding(.top, 10)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    
                    Divider()
                    
                    HStack{
                        // plus button at right bottom
                        
                        Button(action: {}, label: {
                            Image("19")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .cornerRadius(45.0)
                                
                                .overlay(
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .padding(6)
                                        .background(Color.blue)
                                        .clipShape(Circle())
                                        .padding(2)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .offset(x: 5, y: 5)
                                    
                                    ,alignment: .bottomTrailing
                                )
                        })//:Button
                        
                        VStack{
                            
                            Text("199")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Posts")
                                .foregroundColor(.gray)
                        }//:VStack
                        .frame(maxWidth: .infinity)
                        
                        VStack{
                            
                            Text("1,199")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                        }//:VStack
                        .frame(maxWidth: .infinity)
                        
                        VStack{
                            
                            Text("99")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Following")
                                .foregroundColor(.gray)
                        } //:VStack
                        .frame(maxWidth: .infinity)
                        
                    }//:HStack
                    .padding()
                    .padding(.top, 6)
                    
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text("SwiftUI Dev & Swift Dev")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Developer")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        Text("Just working on user interface on instagram trying give a better user experience")
                            .font(.caption)
                            .padding(.trailing, 60)
                            .multilineTextAlignment(.leading)
                        
                        Link(destination: URL(string: "https://www.youtube.com")!, label: {
                            Text("www.youtube.com")
                                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
                        })//:Link
                            
                    }) // :VStack
                    .padding(.top, 4)
                    
                }//:VStack
            })//:Scroll
        }//:VStack
    }
}

struct TopProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        TopProfileTab()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
