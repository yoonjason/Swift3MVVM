//
//  RxIntroViewController.swift
//  mvvm-turorial
//
//  Created by Jason on 2017. 3. 21..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class RxIntroViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    let a = Variable(1)

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var rePassTextField: UITextField!

    @IBOutlet weak var idCheckLabel: UILabel!
    @IBOutlet weak var passCheckLabel: UILabel!
    @IBOutlet weak var passCheckCompareLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        idTextField.rx.text.subscribe(onNext: { text in
//          print(text)
//        }).addDisposableTo(disposeBag)
        
        idTextField.rx.text.asObservable().map{
            if ($0?.isEmpty)! {
                self.idTextField.backgroundColor = UIColor.black
                return
            }else {
                
            }
            }.subscribe{
                [weak self] in self?.idTextField.backgroundColor = UIColor.blue
        }.addDisposableTo(disposeBag)
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
   }
