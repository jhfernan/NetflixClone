//
//  TopMoviePreviewView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/27/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreviewView: View {
    var movie: Movie
    
    func isLast(_ item: String, list: [String]) -> Bool {
        let count = list.count
        
        if let index = list.firstIndex(of: item) {
            return index + 1 == count ? true : false
        }
        return false
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                            .font(.footnote)
                        
                        if !isLast(category, list: movie.categories) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButtonView(
                        text: "My List",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        isOn: true) {
                            //
                        }
                    
                    Spacer()
                    
                    SymbolTextButtonView(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButtonView(
                        text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        isOn: true) {
                            //
                        }
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreviewView(movie: exampleMovie7)
    }
}
