//
//  HttpProtocol.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation


protocol HTTPProtocol{
    
        
    static func request<T: Decodable>(endPoint: APIProtocol, resultType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void)
    
    
}
