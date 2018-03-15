//
//  testTaskManager.swift
//  toDoListTests
//
//  Created by Pravara Kant on 15/03/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import XCTest

class testTaskManager: XCTestCase {
    
    let taskManager = TaskManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPath_notNil() {
        let testURL = taskManager.path()
        XCTAssertNotNil(testURL)
    }
    
    func test_Path_correctURL() {
        var expectedURL = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: .userDomainMask).first
        let path = expectedURL?.path.appending("/tasks")
        expectedURL = URL(fileURLWithPath: path!, isDirectory: false)
        let testURL = taskManager.path()
        XCTAssertEqual(testURL, expectedURL!, "Incorrect path")
    }
}
