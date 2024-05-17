//
//  FeedCell.swift
//  InstagramClone
//
//  Created by djangir on 14/05/24.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    var body: some View {
        VStack {
            // Image and Username
            HStack {
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                if let user = post.user {
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading)
            
            // Post Image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // Action Button
            HStack(spacing: 16){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.leading)
            
            // Like count
            Text("\(post.likes) Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 2)
            
            // Captions
            HStack {
                Text("\(post.user?.username ?? " ") ").font(.footnote).fontWeight(.semibold) + Text(post.caption)
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.top, 2)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POST[2])
}
