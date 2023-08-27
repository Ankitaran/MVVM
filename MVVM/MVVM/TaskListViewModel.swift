//
//  TaskListViewModel.swift
//  MVVM
//
//  Created by Ankita Thakur on 26/08/23.
//

import Foundation

class TaskListViewModel{
    private var taskManager = TaskManager()
    var taskCount: Int{
        return taskManager.arrTask.count
    }
    
    func taskAtIndex(_ index: Int) -> Task {
        return taskManager.arrTask[index]
    }
    func addTask(title: String , description:String){
        let newTask = Task(title: "New task", description: "Add for testing perpose", isCompleted: false)
        taskManager.addTask(newTask)
    }
    func removeAtTask(index:Int){
        taskManager.removeTask(index)
    }
}
