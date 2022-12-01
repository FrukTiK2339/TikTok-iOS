//
//  Notifications.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 01.12.2022.
//

import Foundation

struct Notification {
    let text: String
    let date: Date
    
    static func mockData() -> [Notification] {
        return Array(0...100).compactMap({
            Notification(text: "Something happend? \($0)", date: Date())
        })
    }
}
