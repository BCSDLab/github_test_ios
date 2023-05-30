//
//  ContentItem.swift
//  koreatechgram
//
//  Created by 정태훈 on 2023/04/14.
//

import SwiftUI

struct ContentItem: View {
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image("ProfileImage")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Kim")
                    .foregroundColor(.blue)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                
                Spacer()
                Image(systemName: "ellipsis")
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            
            Image("ProfileImage")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
            
            HStack(spacing: 16){
                Button(action: {
                    isLiked.toggle()
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                }
                Image(systemName: "message")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
            }.padding(.horizontal,16)
        }
    }
}

struct ContentItem_Previews: PreviewProvider {
    static var previews: some View {
        ContentItem()
    }
}
