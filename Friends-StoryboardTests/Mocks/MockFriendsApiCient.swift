//
//  MockFriendsApiCient.swift
//  Friends-StoryboardTests
//
//  Created by Boris Ofon on 11/29/22.
//

// mocking file
// used for mocking friends api

import Foundation
@testable import Friends_Storyboard

class MockFriendsApiClient {
    
    enum MockServiceError: Error {
        case login
        case requestFriends
    }
}


extension MockFriendsApiClient : FriendApiClientDelegate {
   
    func login(username: String, password: String, completionHandler: @escaping (Person?, Error?) -> Void) {
        
        // getting a person from the "database"
        
        let response = PersonList().getFriendAtPosition(0)
        
        completionHandler(response,nil)
        
    }
    
    func getFriendsList(completionHandler: @escaping ([Person]?, Error?) -> Void) {
        
        // hard coding the response
        let response = PersonList().getAllFriends()
        
        completionHandler(response,nil)
    }
    
    
}
