//
//  ProjectsViewModel.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import Foundation

class ProjectsViewModel {
    
    var projects = [JSONProject]()
    var delegate: ServiceDelegate!
    
    func getProjects() {
        let endPoint = Endpoint.allProjects
        
        Services.makeProjectRequest(endPoint: endPoint) { (jsonProjects) in
            
            if let jsonProjects = jsonProjects {
                self.projects = jsonProjects
            }
            
            self.delegate.didFinish(error: nil)
        }
    }
}
