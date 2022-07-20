//
//  APIProtocol.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

enum HTTPMethod: String {
    
    case get = "GET"
    case post = "POST"
    case update = "UPDATE"
    case delete = "DELETE"
    
}

enum HTTPScheme : String {
    case http
    case https
}

protocol APIProtocol{
    
    var scheme : HTTPScheme {get}
    
    var baseURL : String {get}
    
    var path : String {get}
    
    var method : HTTPMethod {get}
    
    var params : [URLQueryItem] {get}
    
}
