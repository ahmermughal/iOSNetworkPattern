//
//  NetworkManagerProtocol.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

protocol NetworkManagerProtocol{
    
    func getCharacter(name: String, completion: @escaping (Result<CharacterResponse, NetworkError>)-> Void)
    
}
