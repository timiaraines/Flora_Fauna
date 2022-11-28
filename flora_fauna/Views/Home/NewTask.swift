//
//  NewTask.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/28/22.
//

import SwiftUI

struct NewTask: View {
    @Environment(\.dismiss) var dismiss
    
    // MARK: Task Values
    @State var taskTitle: String = ""
    @State var taskDescription: String = ""
    @State var taskDate: Date = Date()
    
    // MARK: Core Data Context
    @Environment(\.managedObjectContext) var context
    
    @EnvironmentObject var taskModel: TaskViewModel
    var body: some View {
        
        NavigationView{
            
            List{
                
                Section {
                    TextField("Cycle Start or Cycle End", text: $taskTitle)
                } header: {
                    Text("Cycle Start/End")
                }

                Section {
                    TextField("Enter your symptoms", text: $taskDescription)
                } header: {
                    Text("Symptoms")
                }
                
                // Disabling Date for Edit Mode
                if taskModel.editTask == nil{
                    
                    Section {
                        DatePicker("", selection: $taskDate)
                            .datePickerStyle(.graphical)
                            .labelsHidden()
                    } header: {
                        Text("Cycle Date")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Add New Cycle")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: Disbaling Dismiss on Swipe
            .interactiveDismissDisabled()
            // MARK: Action Buttons
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save"){
                        
                        if let task = taskModel.editTask{
                            
                            task.taskTitle = taskTitle
                            task.taskDescription = taskDescription
                        }
                        else{
                            let task = Task(context: context)
                            task.taskTitle = taskTitle
                            task.taskDescription = taskDescription
                            task.taskDate = taskDate
                        }
                        
                        // Saving
                        try? context.save()
                        // Dismissing View
                        dismiss()
                    }
                    .disabled(taskTitle == "" || taskDescription == "")
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                }
            }
            // Loading Task data if from Edit
            .onAppear {
                if let task = taskModel.editTask{
                    taskTitle = task.taskTitle ?? ""
                    taskDescription = task.taskDescription ?? ""
                }
            }
        }
    }
}
