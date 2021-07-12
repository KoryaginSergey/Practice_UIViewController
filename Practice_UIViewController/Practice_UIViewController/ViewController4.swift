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
        guard let fiveViewController = storyboard?.instantiateViewController(identifier: String(describing: ViewController5.self)) as? ViewController5 else {return}
        navigationController?.pushViewController(fiveViewController, animated: true)
    }
}
