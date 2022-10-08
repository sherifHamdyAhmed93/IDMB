//
//  NetworkConstants.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 19/09/2022.
//

import Foundation

class NetworkConstants{
    static let shared = NetworkConstants()
    
    private init(){}
    
    var apiKey:String{
        return "4946ce2c5119bb6e29ff422b52bcdc07"
    }
    
    var serverAddress:String{
        return "https://api.themoviedb.org/3/"
    }
    
    var imagesServerAddress:String{
        return "https://image.tmdb.org/t/p/w500/"
    }
    
}
