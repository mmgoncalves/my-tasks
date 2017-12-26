//
//  CubeViewController.swift
//  MyTasks
//
//  Created by Mateus Marques on 24/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class CubeViewController: UIViewController {

    var cubeView: CubeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cubeView = CubeView(frame: CGRect.zero)
        self.view.addSubview(cubeView)
        
        cubeView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
    }
}
