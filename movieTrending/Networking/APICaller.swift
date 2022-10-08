//
//  APICaller.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 19/09/2022.
//

import Foundation

enum NetworkErrors:Error{
    case canNotParseData
    case urlError
}

class APICaller{
    class func getTrendingMovies(completionHandler:@escaping(_ result: Result<TrendingMovieModel,Error>)->Void){
        let urlString = NetworkConstants.shared.serverAddress + "trending/all/day?api_key=" + NetworkConstants.shared.apiKey
        guard let url = URL(string: urlString) else{
            completionHandler(.failure(NetworkErrors.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if error == nil ,
               let data = data,
                let result = try? JSONDecoder().decode(TrendingMovieModel.self, from: data){
                completionHandler(.success(result))
            }else{
                completionHandler(.failure(NetworkErrors.canNotParseData))
            }
        }.resume()
        
    }
}
