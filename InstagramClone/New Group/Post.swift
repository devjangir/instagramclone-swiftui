//
//  Post.swift
//  InstagramClone
//
//  Created by djangir on 17/05/24.
//

import Foundation

struct Post : Identifiable, Hashable, Codable {
    let id: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 23, imageUrl: "cosplay-1", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 29, imageUrl: "marvel-1", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 234, imageUrl: "marvel-2", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 26, imageUrl: "iron-man-1", timestamp: Date(), user: User.MOCK_USERS[5]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 2323, imageUrl: "iron-man-2", timestamp: Date(), user: User.MOCK_USERS[5]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 663, imageUrl: "iron-man-3", timestamp: Date(), user: User.MOCK_USERS[5]),
        .init(id: UUID().uuidString, caption: "Mock Test caption to show", likes: 553, imageUrl: "natt-1", timestamp: Date(), user: User.MOCK_USERS[2]),
        
    ]
}
