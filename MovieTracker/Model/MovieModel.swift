//
//  MovieModel.swift
//  MovieTracker
//
//  Created by kirada on 1/24/26.
//

import Foundation

struct MovieResponse: Codable {
    let docs: [MovieModel]
}

struct MovieModel: Codable {
    let id: Int?
    let externalId: ExternalId?
    let name: String?
    let alternativeName: String?
    let enName: String?
    let names: [Names]?
    let type: String?
    let typeNumber: Int?
    let year: Int?
    let description: String?
    let shortDescription: String?
    let slogan: String?
    let status: String?
    let facts: [Facts]?
    let rating: Rating?
    let votes: Votes?
    let movieLength: Int?
    let ratingMpaa: String?
    let ageRating: Int?
    let logo: Logo?
    let poster: Poster?
    let backdrop: Backdrop?
    let videos: Videos?
    let genres: [Genre]?
    let countries: [Country]?
    let persons: [Person]?
    let reviewInfo: ReviewInfo?
    let seasonsInfo: [SeasonsInfo]?
    let budget: Budget?
    let fees: Fees?
    let premiere: Premiere?
    let similarMovies: [SimilarMovie]?
    let sequelsAndPrequels: [SequelsAndPrequels]?
    let watchability: Watchability?
    let releaseYears: [ReleaseYear]?
    let top10: Int?
    let top250: Int?
    let ticketsOnSale: Bool?
    let totalSeriesLength: Int?
    let seriesLength: Int?
    let isSeries: Bool?
    let audience: [Audience]?
    let lists: [String]?
    let networks: Networks?
    let updatedAt: String?
    let createdAt: String?
    
    struct ExternalId: Codable {
        let kpHD: String?
        let imdb: String?
        let tmdb: Int?
    }

    struct Names: Codable {
        let name: String?
        let language: String?
        let type: String?
    }

    struct Facts: Codable {
        let value: String?
        let type: String?
        let spoiler: Bool?
    }

    struct Rating: Codable {
        let kp: Float?
        let imdb: Float?
        let filmCritics: Float?
        let russianFilmCritics: Float?
        let await: Float?
    }

    struct Votes: Codable {
        let kp: Int?
        let imdb: Int?
        let tmdb: Int?
        let filmCritics: Int?
        let russianFilmCritics: Int?
        let await: Int?
    }

    struct Logo: Codable {
        let url: String?
    }

    struct Poster: Codable {
        let url: String?
        let previewUrl: String?
    }

    struct Backdrop: Codable {
        let url: String?
        let previewUrl: String?
    }

    struct Videos: Codable {
        let trailers: [Trailer]?
        
        struct Trailer: Codable {
            let url: String?
            let name: String?
            let site: String?
            let size: Int?
            let type: String?
        }
    }

    struct Genre: Codable {
        let name: String?
    }

    struct Country: Codable {
        let name: String?
    }

    struct Person: Codable {
        let id: Int?
        let photo: String?
        let name: String?
        let enName: String?
        let description: String?
        let profession: String?
        let enProfession: String?
    }

    struct ReviewInfo: Codable {
        let count: Int?
        let positiveCount: Int?
        let percentage: Int?
    }

    struct SeasonsInfo: Codable {
        let number: Int?
        let episodesCount: Int?
    }

    struct Budget: Codable {
        let value: Int?
        let currency: String?
    }

    struct Fees: Codable {
        let world: World?
        let russia: Russia?
        let usa: USA?
        
        struct World: Codable {
            let value: Int?
            let currency: String?
        }
        
        struct Russia: Codable {
            let value: Int?
            let currency: String?
        }
        
        struct USA: Codable {
            let value: Int?
            let currency: String?
        }
    }

    struct Premiere: Codable {
        let country: String?
        let world: String?
        let russia: String?
        let digital: String?
        let cinema: String?
        let bluray: String?
        let dvd: String?
    }

    struct SimilarMovie: Codable {
        let id: Int?
        let name: String?
        let enName: String?
        let alternativeName: String?
        let type: String?
        let poster: Poster?
        let rating: Rating?
        let year: Int?
    }

    struct SequelsAndPrequels: Codable {
        let id: Int?
        let name: String?
        let enName: String?
        let alternativeName: String?
        let type: String?
        let poster: Poster?
        let rating: Rating?
        let year: Int?
    }

    struct Watchability: Codable {
        let items: [Item]?
        
        struct Item: Codable {
            let name: String?
            let logo: Logo?
            let url: String?
        }
    }

    struct ReleaseYear: Codable {
        let start: Int?
        let end: Int?
    }

    struct Audience: Codable {
        let count: Int?
        let country: String?
    }

    struct Networks: Codable {
        let items: [Item]?
        
        struct Item: Codable {
            let name: String?
            let logo: Logo?
        }
    }
}
