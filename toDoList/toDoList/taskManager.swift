//
//  taskManager.swift
//  toDoList
//
//  Created by Pravara Kant on 08/03/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import Foundation

struct Task {
    var titleString: String?
    var descriptionString: String?
}

class TaskManager {

    var taskList: [Task]
    
    init() {
        taskList = [Task]()
    }
}
