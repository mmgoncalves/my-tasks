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
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
