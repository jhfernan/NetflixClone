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
    
}
