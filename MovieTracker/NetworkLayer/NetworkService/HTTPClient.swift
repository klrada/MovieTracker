//
//  HTTPClient.swift
//  MovieTracker
//
//  Created by kirada on 1/28/26.
//

import Foundation

protocol HTTPClient {
    
    func perform(request: URLRequest, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void)
    
}
