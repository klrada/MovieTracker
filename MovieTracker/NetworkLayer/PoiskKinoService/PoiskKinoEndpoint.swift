//
//  PoiskKinoEndpoint.swift
//  MovieTracker
//
//  Created by kirada on 1/28/26.
//

import Foundation

enum PoiskKinoEndpoint: Endpoint {
    case movies(page: Int)
    case movie(id: Int)
}

extension PoiskKinoEndpoint {
    
    var baseURL: String {
        "https://api.poiskkino.dev/v1.4/"
    }
    
    var path: String {
        switch self {
        case .movies:
            return "movie"
        case .movie(id: let id):
            return "movie/\(id)"
        }
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var headers: [String : String]? {
        ["X-API-KEY": ""]
    }
    
    var queryItems: [URLQueryItem]? {
        switch self {
        case .movies(page: let page):
            return [URLQueryItem(name: "page", value: "\(page)")]
        case .movie:
            return []
        }
    }
    
}

    
    
    
    
