//
//  model.swift
//  mvvm-turorial
//
//  Created by Jason on 2017. 3. 20..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import Foundation

class Model {
    var photoUrl : String
    var artist : String
    var songTitle : String
    var debutYear : Int
    
    init(photoUrl : String, artist : String, songTitle : String, debutYear : Int) {
        self.photoUrl = photoUrl
        self.artist = artist
        self.songTitle = songTitle
        self.debutYear = debutYear
    }
 
}

