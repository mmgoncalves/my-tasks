//
//  ProjectsViewController+Delegate.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

extension ProjectsViewController: UITableViewDelegate, ProjectServiceDelegate {
    func didFinish(error: Error?) {
        self.projectView.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        modalPresentationStyle.rawValue
        present(TasksViewController(), animated: true, completion: nil)
    }
}
