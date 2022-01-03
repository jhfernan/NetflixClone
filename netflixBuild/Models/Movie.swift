//
//  Movie.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//
import Foundation

struct Movie: Identifiable {
//    This will assign a random id at the creation of the instance
//    var id: String = UUID().uuidString
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // Movie Detail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var episodes: [Episode]?
    
    var promotionalHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }
        
        return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
    }
    
    var episodeDescription: String {
        if let current = currentEpisode {
            return current.description
        }
        
        return defaultEpisodeInfo.description
    }
    
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
