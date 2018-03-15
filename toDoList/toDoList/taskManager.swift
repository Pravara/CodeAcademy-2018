//
//  taskManager.swift
//  toDoList
//
//  Created by Pravara Kant on 08/03/2018.
//  Copyright © 2018 Pravara Kant. All rights reserved.
//

import Foundation

struct Task: Codable {
    var titleString: String?
    var descriptionString: String?
}

class TaskManager: Codable {
    
    var taskList: [Task]
    
    init() {
        taskList = [Task]()
    }
    
    private func path() -> URL {
        if let documentsPath = FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: .userDomainMask).first {
            let path = documentsPath.path.appending("/tasks")
            let updatedDocumentsPathUrl = URL(fileURLWithPath: path, isDirectory: false)
            return updatedDocumentsPathUrl
        } else {
            fatalError("Could not create URL for specified directory!")
        }
    }
    
    var encoded: Data?
    
    public func storeTasks() {
        let url = path()
        
        let encoder = JSONEncoder()
        
        do {
            encoded = try? encoder.encode(taskList)
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
            }
            FileManager.default.createFile(atPath: url.path, contents: encoded, attributes: nil)
        } catch {
            fatalError(error.localizedDescription)
        }
        
        //            if !FileManager.default.fileExists(atPath: url.path) {
        //                FileManager.default.createFile(atPath: url.path, contents: encoded, attributes: nil)
        //            } else {
        //
        //            }
        //            let data = string.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
        
        //            if FileManager.default.fileExists(atPath: url.path) {
        //                if let fileHandle = try? FileHandle(forWritingTo: url) {
        //                    fileHandle.seekToEndOfFile()
        //                    fileHandle.write(encoded!)
        //                    fileHandle.closeFile()
        //                }
        //            }
        //            else {
        //                FileManager.default.createFile(atPath: url.path, contents: encoded, attributes: nil)
        //            }
    }
    
    public func retrieveTasks() -> [Task] {
        let url = path()
        
        if !FileManager.default.fileExists(atPath: url.path) {
            fatalError("File at path \(url.path) does not exist!")
        }
        
        if let data = FileManager.default.contents(atPath: url.path) {
            let decoder = JSONDecoder()
            do {
                let decoded = try decoder.decode([Task].self, from: data)
                return decoded
            } catch {
                fatalError(error.localizedDescription)
            }
        } else {
            fatalError("No data at \(url.path)!")
        }
    }
}
