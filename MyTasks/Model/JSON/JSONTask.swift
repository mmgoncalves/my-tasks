//
//  JSONTask.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import Foundation

struct JSONTask: Codable {
    var id: Int
    var project_it: Int
    var content: String
    var priority: Int
    var url: String
}
