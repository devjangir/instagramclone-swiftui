//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by djangir on 17/05/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1.0),
        .init(.flexible(), spacing: 1.0),
        .init(.flexible(), spacing: 1.0)
    ]
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                VStack {
                    // Pic and Stats
                    HStack {
                        Image("wakanda")
                            .resizable()
                            .scaledToFit()
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
                        Text("Chadwick Boseman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Wakanda Forever")
                            .font(.footnote)
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
                        ForEach(1...45, id:\.self) { _ in
                            Image("batman")
                                .resizable()
                                .scaledToFill()
                        }
                        
                    })
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(id: "settings", placement: ToolbarItemPlacement.topBarTrailing) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.black)
                }
            })
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
