//
//  ViewController5.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapPushVC4Button(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
