//
//  ProjectsViewController+DataSource.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

extension ProjectsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectCell", for: indexPath) as? ProjectTableViewCell {
            cell.configureStyle()
            let project = viewModel.projects[indexPath.row]
            cell.textLabel?.text = project.name
            return cell
        }
        
        return UITableViewCell()
    }
}
