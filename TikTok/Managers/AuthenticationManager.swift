//
//  AuthenticationManager.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 09.11.2022.
//

import Foundation
import FirebaseAuth

final class AuthManager {
    public static let shared = AuthManager()
    
    private init() {}
    
    enum SignInMethod {
        case email
        case facebook
        case google
    }
    
    //MARK: - Public
    public func signIn(with method: SignInMethod) {
        
    }
    
    public func signOut() {
        
    }
}
