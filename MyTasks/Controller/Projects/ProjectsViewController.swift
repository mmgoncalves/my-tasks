//
//  ProjectsViewController.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class ProjectsViewController: UIViewController {

    var projectView: ProjectsView!
    var viewModel: ProjectsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ProjectsViewModel()
        viewModel.delegate = self
        viewModel.getProjects()
        
        projectView = ProjectsView(frame: CGRect.zero)
        projectView.tableView.delegate = self
        projectView.tableView.dataSource = self
        
        self.view.addSubview(projectView)
        projectView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)   
    }
}
