//
//  UIView + Extensions.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 21/09/2022.
//

import UIKit

extension UIView{
    func round(_ raduis:Double = 10){
        self.layer.cornerRadius = raduis
        self.clipsToBounds = true
    }
    
    func addBorder(color:UIColor,width:CGFloat){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
