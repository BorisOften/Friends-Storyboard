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
            
            // testing for receiving a list with 8 person
            XCTAssertEqual(data.count, 8)
            
            // testing for not nil
            XCTAssertNotNil(data)
            
            // Running the test below will produced an error
            
            // testing for receiving a list with 7 person
            // XCTAssertEqual(data.count, 7)
            
            // XCTAssertNil(data)
            
            
        }
    }
    
    // testing for login
    func testLogin()  {
        
        friendApiCient.login(username: "john", password: "1234") {
            data, error in
            
            XCTAssertNil(error)
            
            guard let data = data else {
                XCTFail("Got an error")
                return
            }
            
            // Can perform a number of test
            
            // testing for first user
            XCTAssertEqual(data.username, PersonList().getFriendAtPosition(0).username)
            XCTAssertEqual(data.password, PersonList().getFriendAtPosition(0).password)
            XCTAssertEqual(data.email, PersonList().getFriendAtPosition(0).email)
            
            // testing for not nil
            XCTAssertNotNil(data.username)
            XCTAssertNotNil(data.password)
            
            //testing for valid data
        }
    }
}
