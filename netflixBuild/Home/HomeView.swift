//
//  HomeView.swift
//  netflixBuild
//
//  Created by Jonathan Fernandes on 12/26/21.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeViewModel = HomeViewModel()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
                .frame(width: screen.width)
            
            // Main VStack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreviewView(movie: exampleMovie1)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            Spacer()
            
            Button {
                //
            } label: {
                Text("Tv Shows")
            }
            Spacer()
            
            Button {
                //
            } label: {
                Text("Movies")
            }
            Spacer()
            
            Button {
                //
            } label: {
                Text("My List")
            }
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
