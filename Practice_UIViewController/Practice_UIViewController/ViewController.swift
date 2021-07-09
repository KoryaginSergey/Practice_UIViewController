//
//  ViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func simpleAlertButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Sign out?", message: "massege", preferredStyle: UIAlertController.Style.alert)
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in
            
        }
        let alertSignOutAction = UIAlertAction.init(title: "Sign out", style: .default) { (action) in
            
        }
        alert.addAction(alertCancelAction)
        alert.addAction(alertSignOutAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func simpleActionSheetButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Sign out?", message: "massege", preferredStyle: UIAlertController.Style.actionSheet)
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in
            
        }
        let alertSignOutAction = UIAlertAction.init(title: "Sign out", style: .default) { (action) in
            
        }
        let alertSignOu = UIAlertAction.init(title: "Sign out", style: .cancel) { (action) in
            
        }
        alert.addAction(alertCancelAction)
        alert.addAction(alertSignOutAction)
        alert.addAction(alertSignOu)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertWithDistractiveButton(_ sender: Any) {
    }
    
    @IBAction func alertWithMoreThan2Button(_ sender: Any) {
    }
    
    @IBAction func alertWithUITextFieldButton(_ sender: Any) {
    }
}

