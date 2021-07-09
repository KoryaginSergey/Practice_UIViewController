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
    }

    @IBAction func goToSecondViewControllerTouchUpInside(_ sender: Any) {
        let secondViewController = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @IBAction func goToThirdViewControllerTouchUpInside(_ sender: Any) {
        let thirdViewController = storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        navigationController?.present(thirdViewController, animated: true, completion: nil)
    }
    
    @IBAction func goToViewController4TouchUpInside(_ sender: Any) {
        let viewController4 = storyboard?.instantiateViewController(identifier: "ViewController4") as! ViewController4
        let navController = UINavigationController(rootViewController: viewController4)
        navController.modalPresentationStyle = .fullScreen
        navigationController?.present(navController, animated: true, completion: nil)
    }
    
}

