//
//  URLSessionExt.swift
//  MovieTracker
//
//  Created by kirada on 1/28/26.
//

import Foundation

extension URLSession: HTTPClient {
    
    func perform(request: URLRequest, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void) {
        dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            
            completion(.success((data, httpResponse)))
        }
        .resume()
    }
    
}
