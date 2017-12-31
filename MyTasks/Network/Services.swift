//
//  Services.swift
//  MyTasks
//
//  Created by Mateus Marques on 23/12/17.
//  Copyright © 2017 Mateus Marques. All rights reserved.
//

import Foundation
import Alamofire

typealias RequestCompleted = (_ error: Error?) -> ()
typealias RequestProjectFinished = (_ jsonProjectw: [JSONProject]?) -> ()
typealias RequestTaskFinished = (_ jsonProjectw: [JSONTask]?) -> ()

enum Endpoint {
    case allProjects
    case allTasks
    case tasksByProject(projectId: Int)
    
    var url: String {
        switch self {
        case .allProjects:
            return "https://beta.todoist.com/API/v8/projects?token=\(TOKEN_API)"
        case .allTasks:
            return "https://beta.todoist.com/API/v8/tasks?token=\(TOKEN_API)"
        case .tasksByProject(let projectId):
            return "https://beta.todoist.com/API/v8/tasks?token=\(TOKEN_API)&project_id=\(projectId)"
        }
    }
}

struct Services {
    
    static func makeProjectRequest(endPoint: Endpoint, completion: @escaping RequestProjectFinished) {
        Alamofire.request(endPoint.url, method: .get)
            .validate()
            .responseJSON { (response) in
                
                guard let data = response.data else {
                    completion(nil)
                    return
                }
                
                do {
                    let jsonProject = try JSONDecoder().decode([JSONProject].self, from: data)
                    completion(jsonProject)
                } catch {
                    completion(nil)
                }
        }
    }
    
    static func makeTaskRequest(endPoint: Endpoint, completion: @escaping RequestTaskFinished) {
        Alamofire.request(endPoint.url, method: .get)
            .validate()
            .responseJSON { (response) in
                
                guard let data = response.data else {
                    completion(nil)
                    return
                }
                
                do {
                    let jsonTask = try JSONDecoder().decode([JSONTask].self, from: data)
                    completion(jsonTask)
                } catch {
                    completion(nil)
                }
        }
    }
}
