//
//  TestViewController.swift
//  mvvm-turorial
//
//  Created by Jason on 2017. 3. 20..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class Zootopia {
    struct Rabbit {
        let comment = "토끼 등장!"
    }
    
    
    let disposeBag = DisposeBag()
    let timer = Observable<Int>.interval(3.0, scheduler: MainScheduler.instance)
    
    init() {
        timer.map{_ in Rabbit()}.subscribe(onNext: {
            rabbit in print(rabbit.comment)
        }).addDisposableTo(disposeBag)
    }
}


class TestViewController: UIViewController {
    

    let data = DataService()
    var zootopia = Zootopia()

    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        Zootopia()
        textLabel.text = data.data.artistText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

