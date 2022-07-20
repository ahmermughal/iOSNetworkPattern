//
//  NetworkError.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

enum NetworkError: String, Error{
    
    case invalidURL = "The URL entered is not valid."
    case invalidResponse = "The response from server is not valid."
    case invalidData = "The data from server is not valid."
    
}
