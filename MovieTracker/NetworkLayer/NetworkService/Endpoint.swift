//
//  Endpoint.swift
//  MovieTracker
//
//  Created by kirada on 1/28/26.
//

import Foundation

protocol Endpoint {
    
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String]? { get }
    var queryItems: [URLQueryItem]? { get }
    
}

extension Endpoint {
    
    func makeRequest() throws -> URLRequest {
        
        var components = URLComponents(url: URL(string: baseURL)!.appendingPathComponent(path), resolvingAgainstBaseURL: false)
        
        components?.queryItems = queryItems
        
        guard let url = components?.url else {
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        headers?.forEach {
            request.setValue($0.value, forHTTPHeaderField: $0.key)
        }
        
        return request
        
    }
    
}
