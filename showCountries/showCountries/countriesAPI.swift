//
//  countriesAPI.swift
//  showCountries
//
//  Created by Pravara Kant on 28/03/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import Foundation

class countriesAPI {
    
    public func getCountries(nameFilter: String, completion: @escaping (_ result: [String]) -> Void) {
        // Set up the URL request
        let endpoint: String = "https://restcountries.eu/rest/v2/name/"+nameFilter
        guard let url = URL(string: endpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        // set up the session
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // make the request
        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            
            // check for any errors
            guard error == nil else {
                print("error")
                print(error?.localizedDescription ?? "")
                return
            }
            
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            
            // parse the result as JSON, since that's what the API provides
            do {
                guard let countries = try JSONSerialization.jsonObject(with: responseData, options: []) as? [AnyObject] else {
                    print("error trying to convert data to JSON")
                    return
                }
                
                let names = countries.flatMap {
                    $0["name"]!
                    } as! [String]
                
                print(names)
                
                DispatchQueue.main.async {
                    completion(names)
                }
                
            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        
        task.resume()
    }
}
