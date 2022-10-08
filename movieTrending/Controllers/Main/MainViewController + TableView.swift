//
//  MainViewController + TableView.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 17/09/2022.
//

import UIKit

extension MainViewController:UITableViewDelegate,UITableViewDataSource{
    
    func setupTableView(){
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.dataSource = self
//        tableView.backgroundColor = .clear
        registerCells()
    }
    
    func registerCells(){
        tableView.register(MainMovieCell.nib, forCellReuseIdentifier: MainMovieCell.reuseIdentifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        mainViewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mainViewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainMovieCell.reuseIdentifier, for: indexPath) as? MainMovieCell else{
            return UITableViewCell()
        }
        let model = cellDataSource[indexPath.row]
        cell.setCellData(movie: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let movieId = cellDataSource[indexPath.row].id else{
            return
        }
        
        guard let movie = mainViewModel.getMovie(movieId: movieId) else{return}
        let movieDetailsViewModel = MovieDetailsViewModel(movie)
        let vc = MovieDetailsVC(movieDetailsViewModel)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
