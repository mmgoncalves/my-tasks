//
//  TasksViewController+Delegate.swift
//  MyTasks
//
//  Created by Mateus Marques on 24/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

extension TasksViewController: UITableViewDelegate, ServiceDelegate {
    
    func didFinish(error: Error?) {
        self.taskView.tableView.reloadData()
    }
}
