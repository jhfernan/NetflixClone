//
//  GlobalHelpers.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2019,
    rating: "PG-13",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2019,
    rating: "R",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: []
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2021,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: []
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/201/300")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: []
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/201/301")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2021,
    rating: "PG-13",
    numberOfSeasons: 2,
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: []
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2019,
    rating: "PG-13",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: []
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailURL: URL(string: "https://picsum.photos/202/300")!,
    categories: ["Dystopian", "Exciting", "Sci Fi"],
    year: 2019, rating: "R",
    numberOfSeasons: 3,
    currentEpisode: exampleEpisodeInfo1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jeffrey Gold",
    cast: "Jackie Chan and Chris Tucker",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4]
)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginning and the End", description: "Six months after leaving a life of crime behind, Jeff finds his life catching up to him. Will he return to crime or rise above it?", season: 1, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingfont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font:font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
