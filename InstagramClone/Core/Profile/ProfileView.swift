//
//  ProfileView.swift
//  InstagramClone
//
//  Created by djangir on 13/05/24.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1.0),
        .init(.flexible(), spacing: 1.0),
        .init(.flexible(), spacing: 1.0)
    ]
    
    var posts: [Post] {
        return Post.MOCK_POST.filter { post in
            post.user?.username == user.username
        }
    }
    let user: User
    let widthDimension: CGFloat = UIScreen.main.bounds.width / 3 - 1
    var body: some View {
            VStack {
                // Header
                VStack {
                    // Pic and Stats
                    HStack {
                        Image(user.profileImageURL ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 2.0)
                            }
                        
                        Spacer()
                        UserStatsView(count: 3, title: "Posts")
                        Spacer()
                        UserStatsView(count: 3, title: "Followers")
                        Spacer()
                        UserStatsView(count: 3, title: "Following")
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    // Namd and Bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullName = user.fullName {
                            Text(fullName)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Action Button
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(.black)
                            .overlay (
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(.gray, lineWidth: 1.0)
                            )
                    })
                }
                Divider()
                
                // Grid View
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 1, content: {
                        ForEach(posts) { post in
                            Image(post.imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: widthDimension, height: widthDimension)
                                .clipped()
                                
                        }
                        
                    })
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[5])
}
