//
//  DatabaseManager.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 09.11.2022.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    public static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    private init() {}
    
    //MARK: - Public
    
    public func getAllUsers(completion: ([String]) -> Void) {
        
    }
}
