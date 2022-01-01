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
    
}
