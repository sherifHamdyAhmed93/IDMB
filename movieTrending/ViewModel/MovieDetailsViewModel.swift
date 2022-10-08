//
//  MovieDetailsviewModel.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 27/09/2022.
//

import Foundation

class MovieDetailsViewModel{
    private var movie:Movie
    
    var movieName:String
    var movieDesc:String
    var boosterURL:URL?
    
    init(_ movie:Movie){
        self.movie = movie
        self.movieName = movie.name ?? movie.title ?? ""
        self.movieDesc = movie.overview ?? ""
        self.boosterURL = getBoosterURL(movie.backdropPath)
    }
    
    private func getBoosterURL(_ imageName:String?)->URL?{
        URL(string: NetworkConstants.shared.imagesServerAddress + (imageName ?? ""))
    }
    
}
