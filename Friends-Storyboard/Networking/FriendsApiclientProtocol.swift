//
//  FriendsApiProtocol.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/29/22.
//

import Foundation

protocol FriendApiClientDelegate {
    
    func login(username: String,password: String, completionHandler: @escaping (Person?, Error?) -> Void)
    
    func getFriendsList(completionHandler: @escaping([Person]?, Error?) -> Void)
    
    
}
