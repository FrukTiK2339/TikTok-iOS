//
//  Notifications.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 01.12.2022.
//

import Foundation

enum NotificationType {
    case postLike(postName: String)
    case userFollow(userName: String)
    case postComment(postName: String)
    
    var id: String {
        switch self {
        case .postLike:
            return "postLike"
        case .userFollow:
            return "userFollow"
        case .postComment:
            return "postComment"

        }
    }
}

struct Notification {
    let text: String
    let type: NotificationType
    let date: Date
    
    static func mockData() -> [Notification] {
        let first = Array(0...5).compactMap({
            Notification(
                text: "Something happend? \($0)",
                type: .postComment(postName: "sdasda"),
                date: Date()
            )
        })
        
        let second = Array(0...5).compactMap({
            Notification(
                text: "Something happend? \($0)",
                type: .userFollow(userName: "kanyewest"),
                date: Date()
            )
        })
        
        let third = Array(0...5).compactMap({
            Notification(
                text: "Something happend? \($0)",
                type: .postLike(postName: "sdasdasdasda"),
                date: Date()
            )
        })
        
        return first + second + third 
    }
}
