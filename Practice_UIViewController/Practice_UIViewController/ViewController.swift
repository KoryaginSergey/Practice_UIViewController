//
//  ViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var textField: String = String()
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func simpleAlertButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in}
        let alertSignOutAction = UIAlertAction.init(title: "Sign out", style: .default) { (action) in}
        alert.addAction(alertCancelAction)
        alert.addAction(alertSignOutAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func simpleActionSheetButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
        let alertApproveAction = UIAlertAction.init(title: "Approve", style: .default) { (action) in}
        let alertEditAction = UIAlertAction.init(title: "Edit", style: .default) { (action) in}
        let alertDeleteAction = UIAlertAction.init(title: "Delete", style: .destructive) { (action) in}
        let alertSignOutAction = UIAlertAction.init(title: "Dismiss", style: .cancel) { (action) in}
        alert.addAction(alertApproveAction)
        alert.addAction(alertEditAction)
        alert.addAction(alertDeleteAction)
        alert.addAction(alertSignOutAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertWithDistractiveButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in}
        let alertSignOutAction = UIAlertAction.init(title: "Sign out", style: .destructive) { (action) in}
        alert.addAction(alertCancelAction)
        alert.addAction(alertSignOutAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertWithMoreThan2Button(_ sender: Any) {
        let alert = UIAlertController.init(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .actionSheet)
        let alertDefaultAction = UIAlertAction.init(title: "Default", style: .default) { (action) in}
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .default) { (action) in}
        let alertDestructiveAction = UIAlertAction.init(title: "Destructive", style: .destructive) { (action) in}
        alert.addAction(alertDefaultAction)
        alert.addAction(alertCancelAction)
        alert.addAction(alertDestructiveAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func alertWithUITextFieldButton(_ sender: Any) {
        let alert = UIAlertController.init(title: "Alert with UItextField", message: nil, preferredStyle: .alert)
        let alertAddAction = UIAlertAction.init(title: "Add", style: .default) { (action) in
            if let txtField = alert.textFields?.first, let text = txtField.text {
                           print("Text==>" + text)
            }
        }
        let alertCancelAction = UIAlertAction.init(title: "Cancel", style: .cancel) { (action) in}
        alert.addTextField { (textField) in
                    textField.placeholder = "Tag"
                }
        alert.addAction(alertAddAction)
        alert.addAction(alertCancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}

