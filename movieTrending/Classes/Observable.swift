//
//  Observable.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 20/09/2022.
//

import Foundation

class Observable<T>{
    var value:T?{
        didSet{
            listener?(self.value)
        }
    }
    private var listener:((T?)->Void)?
    
    init(_ value:T?){
        self.value = value
    }
    
    func bind(_ listener:@escaping((T?)->Void)){
        listener(value)
        self.listener = listener
    }
    
    
    
    
}
