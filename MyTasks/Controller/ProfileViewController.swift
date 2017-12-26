//
//  ProfileViewController.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profile: ProfileView!

    override func viewDidLoad() {
        super.viewDidLoad()

        profile = ProfileView(frame: CGRect.zero)
        
        self.view.addSubview(profile)
        
        profile.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
    }
}
