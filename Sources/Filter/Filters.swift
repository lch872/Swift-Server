//
//  Filters.swift
//  Swift-Server
//
//  Created by lch on 2017/12/20.
//

import Foundation
import PerfectHTTPServer

func mainFilters() -> [[String:Any]]{
    
    var filters: [[String:Any]] = [[String:Any]]()
    
    filters.append([
            "type":"response",
            "priority":"high",
            "name":PerfectHTTPServer.HTTPFilter.contentCompression,
    ])
    
    
    return filters
}

