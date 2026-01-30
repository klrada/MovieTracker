//
//  PoiskKinoService.swift
//  MovieTracker
//
//  Created by kirada on 1/28/26.
//

import Foundation

final class PoiskKinoService {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func fetchMovies(page: Int, completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        
        networkService.request(endpoint: PoiskKinoEndpoint.movies(page: page)) { (result: Result<MovieResponse, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.docs))
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
}
