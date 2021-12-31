//
//  HomeViewModel.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Action"] = exampleMovies.shuffled()
        movies["Watch Again"] = exampleMovies.shuffled()
        movies["Comedy"] = exampleMovies.shuffled()
    }
}
