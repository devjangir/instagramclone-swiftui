//
//  User.swift
//  InstagramClone
//
//  Created by djangir on 17/05/24.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    let username: String
    let profileImageURL: String?
    let bio: String?
    let email: String
    let fullName: String?
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "Thor", profileImageURL: "thor-1", bio: "Thor, A god of asgard", email: "thor@gmail.com", fullName: "Thor Avenger"),
        .init(id: UUID().uuidString, username: "Hitman", profileImageURL: "hitman-1", bio: "Hitman, A powerfull hero", email: "hitman@gmail.com", fullName: "Hit Man"),
        .init(id: UUID().uuidString, username: "Captain", profileImageURL: "captain-america-1", bio: "Captain America a real worrior", email: "captainamerica@gmail.com", fullName: "Captain America"),
        .init(id: UUID().uuidString, username: "Marvel", profileImageURL: "marvel-1", bio: "Marvel women", email: "marvel@gmail.com", fullName: "Marvel Women"),
        .init(id: UUID().uuidString, username: "Hulk", profileImageURL: "hulk-1", bio: "Hulk a scientist", email: "hulk@gmail.com", fullName: "Dr Hulk"),
        .init(id: UUID().uuidString, username: "ironman", profileImageURL: "iron-man-1", bio: "Iron man a genius scientist", email: "ironman@gmail.com", fullName: "Iron Man"),
    ]
}
