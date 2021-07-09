//
//  SecondViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToViewController(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
