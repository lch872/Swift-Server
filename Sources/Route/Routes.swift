//
//  mainRoute.swift
//  Swift-Server
//
//  Created by lch on 2017/12/20.
//

import Foundation


func mainRoute() -> [[String:Any]] {
    
    var routes: [[String:Any]] = [[String:Any]]()
    
    routes.append(["method":"get", "uri":"/login",
                   "handler":Handlers.login,
                   "documentRoot":"./webroot",
                   "allowRequestFilter":false,
                   "allowResponseFilters":true
        ])
    
    routes.append(["method":"get", "uri":"/home",
                   "handler":Handlers.home,
                   "documentRoot":"./webroot",
                   "allowRequestFilter":false,
                   "allowResponseFilters":true
        ])
    
    routes.append(["method":"get", "uri":"/",
                   "handler":Handlers.list,
                   "documentRoot":"./webroot",
                   "allowRequestFilter":false,
                   "allowResponseFilters":true
        ])
    
    return routes
}
