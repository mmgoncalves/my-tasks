//
//  ProjectTableViewCell.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit
import PureLayout

class ProjectTableViewCell: UITableViewCell {

    func configureStyle() {
        
        self.textLabel?.textColor = UIColor.blue
        self.layer.backgroundColor = UIColor.darkGray.cgColor
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
//        let edgeInset: CGFloat = 10.0
//        
//        self.autoPinEdge(toSuperviewEdge: .left, withInset: edgeInset)
//        self.autoPinEdge(toSuperviewEdge: .right, withInset: edgeInset)
//        self.autoPinEdge(toSuperviewEdge: .top, withInset: edgeInset)
//        self.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgeInset)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
