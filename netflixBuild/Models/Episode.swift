//
//  Episode.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 1/1/22.
//

import SwiftUI

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
