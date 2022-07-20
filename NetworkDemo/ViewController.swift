//
//  ViewController.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NetworkManager.shared.getCharacter(name: "rick") { result in
            
            switch result{
                
            case .success(let response):
                print(response.results)
            case .failure(let error):
                print(error)
            }
            
        }
    }


}

