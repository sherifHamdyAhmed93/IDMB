//
//  MainViewModel.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 17/09/2022.
//

import Foundation

class MainViewModel{
    
    var isLoading:Observable<Bool> = Observable(false)
    private var dataSource:TrendingMovieModel?
    var cellDataSource:Observable<[MovieCellViewModel]> = Observable(nil)

    func numberOfSections()->Int{
        1
    }
    
    func numberOfRows(in section:Int)->Int{
        return dataSource?.results?.count ?? 0
    }
    
    func getData(){
        if isLoading.value ?? false == true {
            return
        }
        isLoading.value = true
        APICaller.getTrendingMovies { [weak self] result in
            self?.isLoading.value = false
            switch result{
            case let .success(data):
                self?.dataSource = data
                self?.mapCellData()
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
    
    func mapCellData(){
        print("Top trending movies count is \(dataSource?.results?.count ?? 0)")
        self.cellDataSource.value = self.dataSource?.results?.compactMap({
            MovieCellViewModel($0)
        })
    }
    
    func loadMore(row:Int){
        
    }
    
    func getMovie(movieId id:Int)->Movie?{
        guard let movie = dataSource?.results?.first(where: {
            id == $0.id
        }) else{
            return nil
        }
        return movie
    }
    
}
