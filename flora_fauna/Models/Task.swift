//
//  Task.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/9/22.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int)->Date{
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    TaskMetaData(task: [
        Task(title: "Start of cycle."),
        Task(title: "End of cycle.")
    ], taskDate: getSampleDate(offset: 1)),
    
    TaskMetaData(task: [
        
        Task(title: "Start of cycle."),
        Task(title: "End of cycle.")
        
    ], taskDate: getSampleDate(offset: -3)),
    
    TaskMetaData(task: [
        Task(title: "Start of cycle."),
        Task(title: "End of cycle.")
    ], taskDate: getSampleDate(offset: -8))
    ]
