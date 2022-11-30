//
//  FriendsApiClient.swift
//  Friends-Storyboard
//
//  Created by Boris Ofon on 11/29/22.
//


// This is what what a api call to a client will look like
// This file wont be used for this project

import Foundation

class FriendsApiClient {
    
    enum APIError: Error {
        case serviceError
    }
    
   // since i am mocking, these is not really used
    private func executeRequest(urlRequest: URLRequest, completionHandler: @escaping (Person?, Error?) -> Void){
        
        let urlSession = URLSession.shared
        
        let dataTask = urlSession.dataTask(with: urlRequest) {
            data, respone, error  in
            
            guard let data = data, error == nil else{
                completionHandler(nil, APIError.serviceError)
                return
            }
            
            do {
                guard let jsonDic = try JSONSerialization.jsonObject(with: data,options: []) as? Person else {
                    completionHandler(nil,APIError.serviceError)
                    return
                }
                completionHandler(jsonDic,nil)
            } catch  {
                completionHandler(nil,error)
            }
        }
        
        dataTask.resume()
    }
}

extension FriendsApiClient: FriendApiClientDelegate {
    func getFriendsList(completionHandler: @escaping ([Person]?, Error?) -> Void) {
        
        
        guard let url = URL(string: "https://for-testing-only") else {
            print(APIError.serviceError)
            return
        }
        //getting the friend list
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
    }
    
    
    func login(username: String,password: String, completionHandler: @escaping (Person?, Error?) -> Void){
        
        
       guard let url = URL(string: "https://for-testing-only") else {
            completionHandler(nil,APIError.serviceError)
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue(username, forHTTPHeaderField: "userName")
        urlRequest.addValue(password, forHTTPHeaderField: "password")
        
        executeRequest(urlRequest: urlRequest, completionHandler: completionHandler)
        
    }
}
