//
//  TasksViewController+DataSource.swift
//  MyTasks
//
//  Created by Mateus Marques on 24/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

extension TasksViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TasksTableViewCell {
            cell.configureStyle()
            let task = self.viewModel.tasks[indexPath.row]
            cell.textLabel?.text = task.content
            
            return cell
        }
        
        return UITableViewCell()
    }
}
