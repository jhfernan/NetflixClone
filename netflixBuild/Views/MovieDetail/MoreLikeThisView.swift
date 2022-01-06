//
//  MoreLikeThisView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 1/4/22.
//

import SwiftUI
import simd

struct MoreLikeThisView: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    StandardHomeMovieView(movie: movies[index])
                }
                    
            }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: exampleMovies)
    }
}
