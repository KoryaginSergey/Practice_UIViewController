//
//  ThirdViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToSecondViewControllerTouchUpInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
