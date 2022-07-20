//
//  HttpService.swift
//  NetworkDemo
//
//  Created by Ahmer Mughal on 7/20/22.
//

import Foundation

class HttpService : HTTPProtocol{
    
    private static func buildURL(endPoint: APIProtocol) -> URLComponents  {
        
        var component = URLComponents()
        component.scheme = endPoint.scheme.rawValue
        component.host = endPoint.baseURL
        component.path = endPoint.path
        component.queryItems = endPoint.params
        return component
        
    }
    
    static func request<T>(endPoint: APIProtocol, resultType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        
        let components = buildURL(endPoint: endPoint)
        
        guard let url = components.url else{
            completion(.failure(.invalidURL))
            return
        }
        
        print("URL: \(url)")
        var urlRequest =  URLRequest(url: url)
        urlRequest.httpMethod = endPoint.method.rawValue
        
        let session = URLSession.shared//URLSession(configuration: .default)

        let dataTask = session.dataTask(with: urlRequest) { data, response, error in
            
            if let _ = error {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let response = response as? HTTPURLResponse, (200 ..< 300).contains(response.statusCode) else{
                completion(.failure(.invalidResponse))
                return
            }

            guard let data = data else{
                completion(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let myobj = try decoder.decode(T.self, from: data)
                completion(.success(myobj))
            }catch{
                completion(.failure(.invalidData))
            }
            
        }
        dataTask.resume()
        
    }
    
    
    
    
    
}
