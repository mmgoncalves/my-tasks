//
//  CubeView.swift
//  MyTasks
//
//  Created by Mateus Marques on 24/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import UIKit

class CubeView: UIView {

    let blueView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = UIColor.blue
        return view
    }()
    let redView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = UIColor.red
        return view
    }()
    let yellowView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = UIColor.yellow
        return view
    }()
    let greenView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    var didSetUpConstraints = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(white: 0.1, alpha: 1.0)
        self.addSubview(blueView)
        self.addSubview(redView)
        self.addSubview(yellowView)
        self.addSubview(greenView)
        
        self.setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        
        if didSetUpConstraints {
            
            blueView.autoCenterInSuperview()
            blueView.autoSetDimensions(to: CGSize(width: 50.0, height: 50.0))
            
            redView.autoPinEdge(.top, to: .bottom, of: blueView)
            redView.autoPinEdge(.left, to: .right, of: blueView)
            redView.autoMatch(.width, to: .width, of: blueView)
            redView.autoSetDimension(.height, toSize: 40.0)
            
            yellowView.autoPinEdge(.top, to: .bottom, of: redView, withOffset: 10.0)
            yellowView.autoSetDimension(.height, toSize: 25.0)
            yellowView.autoPinEdge(toSuperviewEdge: .left, withInset: 20.0)
            yellowView.autoPinEdge(toSuperviewEdge: .right, withInset: 20.0)
            
            greenView.autoPinEdge(.top, to: .bottom, of: yellowView, withOffset: 10.0)
            greenView.autoAlignAxis(toSuperviewAxis: .vertical)
            greenView.autoMatch(.height, to: .height, of: yellowView, withMultiplier: 2.0)
            greenView.autoSetDimension(.width, toSize: 150.0)
            
            didSetUpConstraints = false
        }
        
        super.updateConstraints()
    }
}

