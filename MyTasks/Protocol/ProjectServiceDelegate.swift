//
//  ProjectServiceDelegate.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import Foundation

protocol ProjectServiceDelegate {
    func didFinish(error: Error?) -> Void
}
