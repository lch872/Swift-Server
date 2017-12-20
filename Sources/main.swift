//
//  main.swift
//  PerfectTemplate
//
//  Created by Kyle Jessup on 2015-11-05.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import MySQL
import CMySQL

//
struct database {
   static let testHost = "127.0.0.1"
   static let testUser = "root"
   static let testPassword = "123"
   static let testDB = "lchdb"
}

let confData = [
	"servers": [
        [   "name":"localhost",
            "port":8001,
            "routes": mainRoute(),
            "filters": mainFilters()
		]
	]
]




do {
    try HTTPServer.launch(configurationData: confData)
} catch {
    fatalError("\(error)")
}

