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

    @IBAction func didTapPushVC2Button(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(identifier: String(describing: SecondViewController.self))
                as? SecondViewController else {return}
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func didTapPushVC3Button(_ sender: Any) {
        guard let thirdViewController = storyboard?.instantiateViewController(identifier: String(describing: ThirdViewController.self))
                as? ThirdViewController else {return}
        navigationController?.present(thirdViewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapPushVC4Button(_ sender: Any) {
        guard let viewController4 = storyboard?.instantiateViewController(identifier: String(describing: ViewController4.self))
                as? ViewController4 else {return}
        let navController = UINavigationController(rootViewController: viewController4)
        navController.modalPresentationStyle = .fullScreen
        navigationController?.present(navController, animated: true, completion: nil)
    }

}

//extension UIViewController
//{
//    class func instantiateFromStoryboard(_ name: String = "Main") -> Self
//    {
//        return instantiateFromStoryboardHelper(name)
//    }
//
//    fileprivate class func instantiateFromStoryboardHelper<T>(_ name: String) -> T
//    {
//        let storyboard = UIStoryboard(name: name, bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! T
//        return controller
//    }
//}

