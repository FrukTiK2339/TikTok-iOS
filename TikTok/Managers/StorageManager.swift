//
//  StorageManager.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 09.11.2022.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    public static let shared = StorageManager()
    
    private let storageBucket = Storage.storage().reference()
    
    private init() {}
    
    //MARK: - Public
    
    public func getVideoURL(with identifier: String, completion: (URL) -> Void) {
        
    }
    
    public func uploadVideo(from url: URL, filename: String, completion: @escaping (Bool) -> Void) {
        guard let username = UserDefaults.standard.string(forKey: "username") else {
            return
        }
        storageBucket.child("videos/\(username)/\(filename)").putFile(from: url) { _, error in
            completion(error == nil)
        }
    }
    
    public func generateVideoName() -> String {
        let uuidString = UUID().uuidString
        let number = Int.random(in: 0...1000)
        let unixTimeStamp = Date().timeIntervalSince1970
        
        return uuidString + "_\(number)_" + "\(unixTimeStamp)" + ".mov"
    }
}
