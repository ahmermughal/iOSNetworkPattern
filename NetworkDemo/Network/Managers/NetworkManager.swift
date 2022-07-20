//
//  NetworkManager.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

class NetworkManager: NetworkManagerProtocol{
    
    static var shared = NetworkManager()
    
    
    func getCharacter(name: String, completion: @escaping (Result<CharacterResponse, NetworkError>) -> Void) {
        
        HttpService.request(endPoint: RickAndMortyAPI.getCharacter(name: name), resultType: CharacterResponse.self) { result in
            
            switch result{
                
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
            
        }
    }
    
    
}
