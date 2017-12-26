//
//  ProjectsView.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit
import PureLayout

class ProjectsView: UIView {
    
    var shouldSetUpConstraints = true

    var tableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView = UITableView()
        tableView.register(ProjectTableViewCell.self, forCellReuseIdentifier: "ProjectCell")
        tableView.backgroundColor = UIColor.white
        
        self.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        if shouldSetUpConstraints {
            let edgsInset: CGFloat = 0.0
            tableView.autoPinEdge(toSuperviewEdge: .top, withInset: edgsInset)
            tableView.autoPinEdge(toSuperviewEdge: .left, withInset: edgsInset)
            tableView.autoPinEdge(toSuperviewEdge: .right, withInset: edgsInset)
            tableView.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgsInset)
            
            shouldSetUpConstraints = false
        }
        
        super.updateConstraints()
    }

}
