//
//  Friends_StoryboardTests.swift
//  Friends-StoryboardTests
//
//  Created by Boris Ofon on 11/29/22.
//

import XCTest
@testable import Friends_Storyboard

class Friends_StoryboardTests: XCTestCase {
    var friendApiCient: MockFriendsApiClient!
    
    override func setUp() {
        super.setUp()
        
        friendApiCient = MockFriendsApiClient()
    }
    
    // testing for the user list
    func testGettingFriendsList(){
        friendApiCient.getFriendsList { persons, error in
            
            XCTAssertNil(error)
            guard let data = persons else {
                XCTFail("Got an error")
                return
            }
            print(data.count)
        }
    }
    
    
    func testLogin()  {
        
        friendApiCient.login(username: "john", password: "1234") {
            data, error in
            
            XCTAssertNil(error)
            guard let data = data else {
                XCTFail("Got an error")
                return
            }
            
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: data, options: [])
                
            } catch  {
                XCTFail(error.localizedDescription)
            }
        }
    }
}
