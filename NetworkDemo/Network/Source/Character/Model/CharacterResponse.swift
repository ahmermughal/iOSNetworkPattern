//
//  CharacterModel.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

struct CharacterResponse : Codable{
    
    let results : [MyCharacter]
    
}

struct MyCharacter: Codable{
    
    let id: Int
    let name: String
    let gender: String
    let species: String
    
}
