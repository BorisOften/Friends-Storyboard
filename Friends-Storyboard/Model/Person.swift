//
//  Users.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/29/22.
//

import Foundation

class Person: Codable {
    
    let username: String
    let email: String
    
    init(username: String, email: String) {
        self.username = username
        self.email = email
    }
}
