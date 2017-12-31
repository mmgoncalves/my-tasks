//
//  TaskViewModel.swift
//  MyTasks
//
//  Created by Mateus Marques on 29/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import Foundation

class TaskViewModel {
    
    var tasks = [JSONTask]()
    var delegate: ServiceDelegate!
    
    func getTasks(project: JSONProject) {
        
        let endPoint = Endpoint.tasksByProject(projectId: project.id)
        
        Services.makeTaskRequest(endPoint: endPoint, completion: { (jsonTasks) in
            if let jsonTasks = jsonTasks {
                self.tasks = jsonTasks
            }
            
            self.delegate.didFinish(error: nil)
        })
    }
}
