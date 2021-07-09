//
//  ViewController4.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapPushVC5Button(_ sender: Any) {
        let fiveViewController = storyboard?.instantiateViewController(identifier: "ViewController5") as! ViewController5
        navigationController?.pushViewController(fiveViewController, animated: true)
    }
    
    @IBAction func didTapPushVCButton(_ sender: Any) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
}
