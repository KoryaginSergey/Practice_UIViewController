//
//  ViewController.swift
//  Practice_UIViewController
//
//  Created by Admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet private weak var inputTextField: UITextField!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Actions
    
    @IBAction func didRedScreenButton(_ sender: Any) {
        pushSecondViewController(color: UIColor.red)
    }
    
    @IBAction func didGreenScreenButton(_ sender: Any) {
        pushSecondViewController(color: UIColor.green)
    }
    
    @IBAction func didBlueScreenButton(_ sender: Any) {
        pushSecondViewController(color: UIColor.blue)
    }
    
    // MARK: - Private
    
    private func pushSecondViewController(color: UIColor) {
        guard let secondVC = storyboard?.instantiateViewController(identifier: String(describing: SecondViewController.self)) as? SecondViewController else {return}
        let text = inputTextField.text
        secondVC.textFromVC = text
        secondVC.view.backgroundColor = color
        secondVC.didReturn = {text in
            self.inputTextField.text = text
        }
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

