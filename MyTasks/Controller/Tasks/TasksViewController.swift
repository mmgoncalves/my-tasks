//
//  TasksViewController.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    var taskView: TasksView!
    var viewModel: TaskViewModel!
    var project: JSONProject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = TaskViewModel()
        viewModel.delegate = self
        viewModel.getTasks(project: self.project)
        
        taskView = TasksView(frame: CGRect.zero)
        taskView.tableView.delegate = self
        taskView.tableView.dataSource = self
        self.view.addSubview(taskView)
        self.view.backgroundColor = UIColor.white
        
        taskView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
    }

}
