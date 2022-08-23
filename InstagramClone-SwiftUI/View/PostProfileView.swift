//
//  PostProfileView.swift
//  InstagramClone-SwiftUI
//
//  Created by Aapna on 16/08/22.
//

import SwiftUI

struct PostProfileView: View {
     //MARK: - Property
    
    var images: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"]
    
    var columnGrid: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let imageDimension = UIScreen.main.bounds.width / 3
    
     //MARK: - Body
    var body: some View {
        VStack {
            HStack{
                Spacer()
                
                Image(systemName: "square.grid.3x3")
                    .font(.title)
                
                Spacer()
                
                Image(systemName: "play.square")
                    .font(.title)
                
                Spacer()
                
                Image(systemName: "person.crop.square")
                    .font(.title)
                
                Spacer()
                
                Image(systemName: "person.crop.square")
                    .font(.title)
                
                Spacer()
            } //:HStack
            .padding(.vertical, 6)
        .foregroundColor(Color(.darkGray))
        }
        
        //Grid
        LazyVGrid(columns: columnGrid, spacing: 0) {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension ,height: imageDimension)
                    .border(Color.white)
                    .clipped()
            }
        }
        
    }
    
}

 //MARK: - Preview
struct PostProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PostProfileView()
    }
}
