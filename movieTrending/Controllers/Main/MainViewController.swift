//
//  MainViewController.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 17/09/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var activityIndicatorView:UIActivityIndicatorView!

    let mainViewModel = MainViewModel()
    var cellDataSource:[MovieCellViewModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        bindData()
    }
    
    func configureView(){
        setupTableView()
        self.title = "MAIN"
        self.view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mainViewModel.getData()
    }
    
    func bindData(){
        mainViewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self , let isLoading = isLoading else{
                return
            }
            DispatchQueue.main.async {
                if isLoading{
                    self.activityIndicatorView.startAnimating()
                }else{
                    self.activityIndicatorView.stopAnimating()
                }
            }
        }
        
        mainViewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self , let movies = movies else{
                return
            }
            self.cellDataSource = movies
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }

}
