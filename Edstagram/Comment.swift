//
//  Comment.swift
//  Edstagram
//
//  Created by Ed McCormic on 8/7/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Foundation


struct Comment {
    
    var user: User
    
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
