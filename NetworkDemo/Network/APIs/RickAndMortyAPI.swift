//
//  CharacterAPI.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

enum RickAndMortyAPI: APIProtocol{
    
    case getCharacter(name: String)
    
    var scheme: HTTPScheme {
        switch self{
        case .getCharacter:
            return .https
        }
    }
    
    var baseURL: String {
        switch self{
        case .getCharacter:
            return "rickandmortyapi.com"
        }
    }
    
    var path: String{
        switch self{
        case .getCharacter:
            return "/api/character"
        }
    }
    
    var method: HTTPMethod{
        switch self{
        case .getCharacter:
            return .get
        }
    }
    
    var params: [URLQueryItem] {
        
        switch self{
        case .getCharacter(let name):
            
            let params = [
                URLQueryItem(name: "name", value: name)
            ]
         return params
        }
        
    }
    
    
    
}
