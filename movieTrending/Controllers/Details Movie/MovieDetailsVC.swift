//
//  MovieDetailsVC.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 27/09/2022.
//

import UIKit
import SDWebImage
class MovieDetailsVC: UIViewController {

    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var movieNameLabel:UILabel!
    @IBOutlet weak var movieDescLabel:UILabel!

    private var movieDetailsViewModel:MovieDetailsViewModel
    init(_ movie:MovieDetailsViewModel){
        self.movieDetailsViewModel = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    func configureView(){
        self.movieNameLabel.text = self.movieDetailsViewModel.movieName
        self.movieDescLabel.text = self.movieDetailsViewModel.movieDesc
        self.imageView.sd_setImage(with: self.movieDetailsViewModel.boosterURL, completed: nil)
    }


}
