//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func getListOfCountries(completion: @escaping (_ result: [String]) -> Void) {
//STEP-1 Create a URL
let endpoint = "https://restcountries.eu/rest/v2/name/united"
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

