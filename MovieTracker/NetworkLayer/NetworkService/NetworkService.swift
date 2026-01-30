//
//  NetworkService.swift
//  MovieTracker
//
//  Created by kirada on 1/24/26.
//

import Foundation

final class NetworkService {
    
    private let httpClient: HTTPClient
    
    init(httpClient: HTTPClient = URLSession.shared) {
        self.httpClient = httpClient
    }
    
    func request<T: Codable>(endpoint: Endpoint, completion: @escaping (Result<T, Error>) -> Void) {
        
        do {
            let request = try endpoint.makeRequest()
            
            httpClient.perform(request: request) { result in
                switch result {
                case .success(let (data, _)):
                    do {
                        let model = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(model))
                    } catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
            
        } catch {
            completion(.failure(error))
        }
        
    }
    
}


