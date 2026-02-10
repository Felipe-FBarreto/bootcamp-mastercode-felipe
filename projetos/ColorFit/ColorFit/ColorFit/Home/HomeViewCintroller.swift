//
//  ViewController.swift
//  ColorFit
//
//  Created by Felipe iOS on 10/02/26.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var idadeTextField: UITextField!
    
    @IBOutlet weak var continuarButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continuarButton.layer.cornerRadius = 16
        nomeTextField.becomeFirstResponder()
        
    }
    
    func validateData () -> Bool {
        let alertControler = UIAlertController(title: "Campos Vazios", message: "Preencha todos os campos", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default){ _ in }
            
        let isNameEmpyt = nomeTextField.text?.isEmpty ?? true
        let isAgeEmpty = idadeTextField.text?.isEmpty ?? true
        
        if isNameEmpyt || isAgeEmpty {
            alertControler.addAction(okAlert)
            present(alertControler, animated: true)
            return false
        }
        return true
    }

    @IBAction func tappedContinuarButton(_ sender: Any) {
        guard validateData() else {return}
        
        let preferencias = UIStoryboard(name: "Preferencia", bundle: nil).instantiateViewController(withIdentifier: "Preferencias") as! Preferencias
        
        preferencias.name = nomeTextField.text ?? ""
        nomeTextField.text = ""
        idadeTextField.text = ""
        nomeTextField.becomeFirstResponder()
        navigationController?.pushViewController( preferencias, animated: true)
    }
    
}

