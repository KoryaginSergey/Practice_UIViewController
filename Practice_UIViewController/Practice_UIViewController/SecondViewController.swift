//
//  SecondViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet private weak var outputFieldLabel: UILabel!
    @IBOutlet private weak var outputTextField: UITextField!
    
    var textFromVC: String?
    var didReturn: ((_ text: String?) -> Void)?
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        outputFieldLabel.text = textFromVC
        outputTextField.text = textFromVC
        
        outputTextField.delegate = self
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        didReturn?(outputTextField.text)
        navigationController?.popViewController(animated: true)
        return true
    }
}
