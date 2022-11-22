//
//  PostComment.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 21.11.2022.
//

import Foundation

struct PostComment {
    let text: String
    let user: User
    let date: Date
    
    static func mockComments() -> [PostComment] {
        let user = User(username: "kanyewest",
                        profilePictureURL: nil,
                        identifier: UUID().uuidString)
        var comments = [PostComment]()
        let text = [
        "This is first, bro!",
        "Second already here...",
        "Maybe third comment is alright???"
        ]
        
        for comment in text {
            comments.append(PostComment(text: comment, user: user, date: Date()))
        }
        return comments
    }
}
