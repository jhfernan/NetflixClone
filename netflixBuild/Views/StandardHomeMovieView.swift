//
//  StandardHomeMovieView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie: Movie

    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovie1)
            .frame(width: 200, height: 300)
    }
}
