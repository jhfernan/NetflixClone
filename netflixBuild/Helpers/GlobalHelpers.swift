//
//  GlobalHelpers.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2019, rating: "PG-13")
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2019, rating: "R")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2021, rating: "TV-MA")
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/201/300")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2020, rating: "TV-MA")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/201/301")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2021, rating: "PG-13", promotionalHeadline: "Sequel to be Released Next Year")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2019, rating: "PG-13")
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/202/300")!, categories: ["Dystopian", "Exciting", "Sci Fi"], year: 2019, rating: "R", numberOfSeasons: 3, promotionalHeadline: "Watch Season 3 Now")

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black]),
        startPoint: .top,
        endPoint: .bottom)
}
