//
//  UserStatsView.swift
//  InstagramClone
//
//  Created by djangir on 13/05/24.
//

import SwiftUI

struct UserStatsView: View {
    let count: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.footnote)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
    }
}

#Preview {
    UserStatsView(count: 3, title: "Posts")
}
