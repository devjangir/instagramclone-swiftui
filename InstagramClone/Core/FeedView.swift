//
//  FeedView.swift
//  InstagramClone
//
//  Created by djangir on 14/05/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(Post.MOCK_POST) { post in
                        FeedCell(post: post)
                        Divider()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(id: "Message", placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                }
                ToolbarItem(id: "Message", placement: .navigationBarLeading) 
                {
                    Image("instagram")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 44)
                }
            })
        }
    }
        
}

#Preview {
    FeedView()
}
