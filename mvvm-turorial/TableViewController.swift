//
//  TableViewController.swift
//  mvvm-turorial
//
//  Created by TheJason on 2017. 3. 19..
//  Copyright © 2017년 TheJason. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class TableViewController: UITableViewController {

    let cars: [CarViewModel] = (UIApplication.shared.delegate as! AppDelegate).cars
    let disposeBag = DisposeBag()
    
    
    @IBOutlet weak var onButtonRxIntro: UIBarButtonItem!
    @IBOutlet weak var onButtonGoToTestPage: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        onButtonGoToTestPage.rx.tap.subscribe{
            event in self.performSegue(withIdentifier: "TO_TEST", sender: nil)
        }.disposed(by: disposeBag)
        
        
        onButtonRxIntro.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.performSegue(withIdentifier: "TO_RXINRO", sender: nil)
            })
            .addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        let carViewModel = cars[indexPath.row]
        
        cell.textLabel?.text = carViewModel.titleText
        cell.detailTextLabel?.text = carViewModel.horsepowerText
        return cell
    }
    

}
