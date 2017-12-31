//
//  TasksTableViewCell.swift
//  MyTasks
//
//  Created by Mateus Marques on 29/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class TasksTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configureStyle() {
        self.textLabel?.textColor = UIColor.white
        self.backgroundColor = UIColor.darkGray
    }

}
