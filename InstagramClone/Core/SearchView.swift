//
//  SearchView.swift
//  InstagramClone
//
//  Created by djangir on 14/05/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageURL ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullName {
                                        Text(fullname)
                                            .font(.footnote)
                                    }
                                }
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.leading)
                        }   
                    }
                }
                .navigationDestination(for: User.self, destination: { user in
                    ProfileView(user: user)
                })
                .searchable(text: $searchText, prompt: "Search here ...")
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.inline)
            }
           
        }
    }
}



#Preview {
    SearchView()
}
