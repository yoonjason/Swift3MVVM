//
//  DataService.swift
//  mvvm-turorial
//
//  Created by Jason on 2017. 3. 20..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import Foundation

class DataService {
    let data :ViewModel = ViewModel(model: Model(photoUrl: "http://www.naver.com", artist: "아이유", songTitle: "꽃향기", debutYear: 2006))
    
    
    let apiData : [ViewModel] = {
        let IU = Model(photoUrl: "", artist: "IU", songTitle: "", debutYear: 2007)
        let BTOB = Model(photoUrl: "", artist: "BTOB", songTitle: "", debutYear: 2007)
        let BTS = Model(photoUrl: "", artist: "BTS", songTitle: "", debutYear: 2007)
        let RedVelvet = Model(photoUrl: "", artist: "RedVelvet", songTitle: "", debutYear: 2007)
        return [ViewModel(model:IU), ViewModel(model:BTOB), ViewModel(model:BTS), ViewModel(model:RedVelvet)]
    }()
}
