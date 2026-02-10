//
//  ViewController.swift
//  Tela-de-cadastros
//
//  Created by Felipe iOS on 05/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        confirmPasswordTextField.isSecureTextEntry = true
        registerButton.isEnabled = false
        registerButton.backgroundColor = .systemGray
    }

    @IBAction func tapperdToCheckButton(_ sender: Any) {
        configButton()
    }
    
    func configButton (){
        let isEnabledButton =
                !(nameTextField.text?.isEmpty ?? true) &&
                !(emailTextField.text?.isEmpty ?? true) &&
                !(passwordTextField.text?.isEmpty ?? true) &&
                !(confirmPasswordTextField.text?.isEmpty ?? true)
        
        if isEnabledButton {
            registerButton.isEnabled = true
            registerButton.backgroundColor = .systemBlue
        }
        
    }
    
    
    
}

