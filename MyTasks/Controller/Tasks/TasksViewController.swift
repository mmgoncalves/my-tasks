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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskView = TasksView(frame: CGRect.zero)
        self.view.addSubview(taskView)
        self.view.backgroundColor = UIColor.white
        
        taskView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
    }

}
