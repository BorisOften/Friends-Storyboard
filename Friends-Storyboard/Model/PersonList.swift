//
//  PersonList.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/29/22.
//


// this is an array of Person
import Foundation

struct PersonList {
    
    private let friends = [
        
        Person(username: "John", email: "John@gmail.com", password: "John1234"),
        Person(username: "Thomas", email: "Thomas@gmail.com", password: "5678"),
        Person(username: "Chris", email: "Chris@gmail.com", password: "123"),
        Person(username: "Johnathan", email: "Johnathan@gmail.com", password: "123456"),
        Person(username: "Brown", email: "Brown@gmail.com", password: "123456789"),
        Person(username: "Lil", email: "Lil@gmail.com", password: "Lil1234"),
        Person(username: "Frank", email: "Frank@gmail.com", password: "Frank1234"),
        Person(username: "Ciss", email: "ciss@gmail.com", password: "ciss1234")
    
    ]
    
    func getCount() -> Int{
        friends.count
    }
    
    func getFriendAtPosition(_ index: Int)-> Person{
        friends[index]
    }
    
    func getAllFriends()-> [Person]{
        friends
    }
}
