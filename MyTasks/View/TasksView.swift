//
//  TasksView.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit
import PureLayout

class TasksView: UIView {
    
    var backButton: UIButton = {
       let button = UIButton()
        button.titleLabel?.textColor = UIColor.red
        return button
    }()
    var tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(TasksTableViewCell.self, forCellReuseIdentifier: "TaskCell")
        return tableView
    }()
    var navController: UINavigationController = {
        let nav = UINavigationController()
        nav.view.backgroundColor = UIColor.blue
        return nav
    }()
    
    var didUpdateConstraints = true

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backButton.titleLabel?.text = "Fechar"
        
        self.addSubview(backButton)
        self.addSubview(tableView)
        
        self.setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        
        if didUpdateConstraints {
            
            backButton.autoPinEdge(toSuperviewEdge: .top, withInset: 10.0)
            backButton.autoPinEdge(toSuperviewEdge: .left, withInset: 10.0)
            
            tableView.autoPinEdge(.top, to: .bottom, of: backButton, withOffset: 10.0)
            tableView.autoPinEdge(toSuperviewEdge: .left, withInset: 0.0)
            tableView.autoPinEdge(toSuperviewEdge: .right, withInset: 0.0)
            tableView.autoPinEdge(toSuperviewEdge: .bottom, withInset: 0.0)
            
            didUpdateConstraints = false
        }
        super.updateConstraints()
    }
}
