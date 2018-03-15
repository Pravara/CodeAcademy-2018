//
//  toDoListUITests.swift
//  toDoListUITests
//
//  Created by Pravara Kant on 27/01/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import XCTest

class toDoListUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let element = app.otherElements.containing(.navigationBar, identifier:"ToDo").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let textField = element.children(matching: .textField).element
        textField.tap()
        textField.typeText("test task")
        
        let textView = element.children(matching: .textView).element
        textView.tap()
        textView.tap()
        textView.typeText("test description")
        app.buttons["Add item"].tap()
        
        let okButton = app.alerts["value from user defaults"].buttons["OK"]
        okButton.tap()
        app.navigationBars["toDoList.TableView"].buttons["ToDo"].tap()
        app.navigationBars["ToDo"].buttons["View List"].tap()
        okButton.tap()
        
    }
    
}
