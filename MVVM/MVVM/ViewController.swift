//
//  ViewController.swift
//  Architecure
//
//  Created by Ankita Thakur on 26/08/23.
//

import UIKit

class ViewController: UIViewController {
//MARK: IBOutlet & Variable
    @IBOutlet var tblTaskList : UITableView!
    
    var viewModel = TaskListViewModel()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: UIAction
    
    @IBAction func addTask(_ sender : UIButton){
        addButtonTapped()
    }
   

       // Implement UITableViewDataSource methods to populate the table view.

    //MARK: Custom Function
       func addButtonTapped() {
           // Handle user tapping the "Add Task" button.
           viewModel.addTask(title: "New Task", description: "Description")
           tblTaskList.reloadData() // Update the View.
       }
   
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    // here we will implementing the task list
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.taskCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        
        // Configure the cell with the data from your tasks array
        let task = viewModel.taskAtIndex(indexPath.row)
        cell.textLabel?.text = task.title
        cell.detailTextLabel?.text = task.description
        
        // You can also customize the cell further here
        
        return cell
        
    }
    
    
    
}
