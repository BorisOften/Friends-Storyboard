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
    
    var loginWasCalled = false
    var requestFriendsList = false
    
    enum MockServiceError: Error {
        case login
        case requestFriends
    }
    
    
    let mockFriendslist : [String: Any] = [
        "Johnrsr": "JohnEmail.com"
    ]

    
    let mockGetLogin: [String: Any] = [
        "John": "1234"
    ]
}


extension MockFriendsApiClient : FriendApiClientDelegate {
   
    func login(username: String, password: String, completionHandler: @escaping ([Person]?, Error?) -> Void) {
        
    }
    
    func getFriendsList(completionHandler: @escaping ([Person]?, Error?) -> Void) {
        
        // hard coding the response
        let response = PersonList().friends
        
        completionHandler(response,nil)
    }
    
    
}
