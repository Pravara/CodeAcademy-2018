//: Playground - noun: a place where people can play

/*:
 # Table of Contents
 
 * Print Statement - Hello World
 * Simple Values
 * Optionals
 * Functions
 * if - else
 * For loop
 * Unwrapping
 */

import UIKit

//: Follow the tradition by Hello World!

//print("Hello World!")

//: Simple Values
//: Constants
//let number2: Int = 50
//number2 = number1 + number2

//: Variables
//var number1: Int  //Data type explicitly mentioned
//number1 = 40
//number1 = number1 + 10

//var str = "Hello, playground" // Data type is inferred from the assigned value
//str = str + " How are you?"
//str = 20

//: array
//var fruitsArray = ["Apple", "Grapes", "Oranges", "Kiwi"]
//print(fruitsArray)
//fruitsArray.append("Strawberries")
//print(fruitsArray)
//fruitsArray[1] = "Blueberries"
//print(fruitsArray)
//fruitsArray.remove(at: 3)
//print(fruitsArray)
//
//let fiveADay = ["Apple", "Carrots", "Peas"]
//fiveADay.append("Eggs")
//fiveADay.remove(at: 0)

//: dictionary
//var shoppingListDictionary = [String:Int]()
//shoppingListDictionary["Eggs"] = 6
//shoppingListDictionary["Tomatoes"] = 4


//: Optionals
//str = nil // Not an optional

//var optionalValue: String?
//optionalValue = "Apple"
//optionalValue = nil

//: Functions
// No parameters
//func greet() {
//    print("Hello World!")
//}

//greet()
// single parameter
//func greet(name: String) {
//    print("Hello \(name)")
//}

//greet(name: "iOS")

// Internal and external name of parameter
//func greet(withName name: String) {
//    print("Hi \(name)")
//}

//greet(withName: "Swift")

//: if - else
//enum timeOfDay {
//    case morning
//    case afternoon
//    case evening
//    case night
//}

//func greet(name: String, time: timeOfDay) {
//    if time == .morning {
//        print("Good Morning \(name)")
//    } else if (time == .night){
//        print("Good Night \(name)")
//    } else {
//        print("Good Day \(name)")
//    }
//
//    // switch statement
//    var greeting: String
//    switch time {
//    case .morning:
//        greeting = "Morning"
//    case .afternoon:
//        greeting = "Afternoon"
//    case .evening:
//        greeting = "Evening"
//    case .night:
//        greeting = "Night"
//    }
//    print("Good \(greeting) \(name)")
//}

//greet(name: "London", time: .afternoon)

//: For Loop
//func greet(_ name: String, numberOfTimes: Int) {
//    for i  in 1...numberOfTimes {
//        print("hey \(name) \(i)")
//    }
//}

//greet("friend", numberOfTimes: 3)


//: Unwrapping with if let
//func printScore(score: Int?) {
//    if let newScore = score {
//        print(newScore)
//    } else {
//        print("Match is not started yet")
//    }
//}
//printScore(score: nil)

//: Guard
//func printScoreUsingGuard(score: Int?) {
//    guard let score = score, score > 0 else {
//        print("Match is not started yet")
//        return
//    }
//
//    print("score is \(score)")
//}

//printScoreUsingGuard(score: nil)
//printScoreUsingGuard(score: 10)

