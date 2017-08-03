//
//  Post.swift
//  Edstagram
//
//  Created by Ed McCormic on 8/3/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    
    init(dictionary: [String: Any]){
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
