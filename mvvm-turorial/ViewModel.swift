//
//  ViewModel.swift
//  mvvm-turorial
//
//  Created by Jason on 2017. 3. 20..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import Foundation

class ViewModel {
    private var model : Model
    
    var songTitleText : String {
        return model.songTitle
    }
    
    var photoUrl : NSURL {
        return NSURL(string: model.photoUrl)!
    }
    
    var debutYearText : Int {
        return model.debutYear
    }
    
    var artistText : String {
        return model.artist
    }
    
    init(model : Model) {
        self.model = model
    }
}
