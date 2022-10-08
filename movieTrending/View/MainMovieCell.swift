//
//  MainMovieCell.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 21/09/2022.
//

import UIKit
import SDWebImage

extension UITableViewCell{
    static var nib:UINib{
        UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static var reuseIdentifier:String{
        String(describing: self)
    }
}

class MainMovieCell: UITableViewCell {
    
    @IBOutlet weak var backView:UIView!
    @IBOutlet weak var movieBoster:UIImageView!
    @IBOutlet weak var movieNameLabel:UILabel!
    @IBOutlet weak var movieRelaseDateLabel:UILabel!
    @IBOutlet weak var movieRateLabel:UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.round()
        backView.addBorder(color: UIColor.label, width: 1)
        movieBoster.round(5)
        backView.backgroundColor = .gray
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellData(movie:MovieCellViewModel){
        self.movieNameLabel.text = movie.name
        self.movieRelaseDateLabel.text = movie.date
        self.movieRateLabel.text = movie.rate
        self.movieBoster.sd_setImage(with: movie.boosterURL)
    }
    
}
