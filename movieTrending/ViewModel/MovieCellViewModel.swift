//
//  MovieCellViewModel.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 21/09/2022.
//

import Foundation

class MovieCellViewModel{
    var id:Int?
    var name:String
    var date:String
    var rate:String
    var boosterURL:URL?
    
    init(_ movie:Movie){
        self.id = movie.id
        self.name = movie.name ?? movie.title ?? ""
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.rate = "\(movie.popularity ?? 0 )/ 10.0"
        self.boosterURL = getBoosterURL(movie.posterPath)
    }
    
    private func getBoosterURL(_ imageName:String?)->URL?{
        URL(string: NetworkConstants.shared.imagesServerAddress + (imageName ?? ""))
    }
    
}
