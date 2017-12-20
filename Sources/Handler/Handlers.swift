//
//  Handle.swift
//  Swift-Server
//
//  Created by lch on 2017/12/20.
//

import Foundation
import PerfectHTTP

class Handlers {
    static func makeResponse(current_category:Int,request:HTTPRequest,response:HTTPResponse) {
        var context: [String : Any] = [:]
        do{
            context["user_count"] = Int(arc4random()%100)+1
            context["topic_count"] = Int(arc4random()%100)+1
            context["comment_count"] = Int(arc4random()%100)+1
            context["diff"] = Int(arc4random()%100)+1
            context["diff_days"] = Int(arc4random()%100)+1
            context["current_category"] = Int(arc4random()%100)+1
        }catch{
            
        }
       try! response.setBody(json: context)
        response.completed()
    }
    
    static func login(data: [String:Any]) throws -> RequestHandler {
        return {
            request, response in
        response.setHeader(.contentType, value: "text/html")
        response.appendBody(string: "<html><title>Hello, world!</title><body>Login Login</body></html>")
        response.completed()
        }
    }
    
    static func home(data: [String:Any]) throws -> RequestHandler {
        return {
                request, response in
//        response.setHeader(.contentType, value: "text/html")
//        response.appendBody(string: "<html><title>Hello, world!</title><body>Home Home</body></html>")
//        response.completed()
            response.status = HTTPResponseStatus.found
            response.setHeader(HTTPResponseHeader.Name.location, value: "http://baidu.com")
            response.completed()
        }
    }
    
    static func list(data: [String:Any]) throws -> RequestHandler {
            return {
                request, response in
        Handlers.makeResponse(current_category: 1, request: request, response: response);
            }
    }
    
}
