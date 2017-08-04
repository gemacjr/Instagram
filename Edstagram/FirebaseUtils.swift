//
//  FirebaseUtils.swift
//  Edstagram
//
//  Created by Ed McCormic on 8/3/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Foundation
import Firebase
extension Database {
    
    static func fetchUserWithUID(uid: String, completion: @escaping (User) -> ()){
        
        guard let uid = Firebase.Auth.auth().currentUser?.uid else { return }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)
            
            
            
        }) { (err) in
            print("Failed to fetch user for posts:", err)
        }
        
    }
}
