//
//  ProjectsViewController+Delegate.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

extension ProjectsViewController: UITableViewDelegate, ServiceDelegate {
    func didFinish(error: Error?) {
        self.projectView.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let tasksViewController = TasksViewController()
        let project = viewModel.projects[indexPath.row]
        tasksViewController.project = project
        
        
        present(tasksViewController, animated: true, completion: nil)
    }
}
