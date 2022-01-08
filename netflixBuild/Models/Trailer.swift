//
//  Trailer.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 1/8/22.
//

import Foundation

struct Trailer: Identifiable {
    // We make everything identifiable off the bat if we know we plan to iterate through it
    // since it will need to an id
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
