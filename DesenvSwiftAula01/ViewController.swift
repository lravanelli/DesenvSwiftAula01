//
//  ViewController.swift
//  DesenvSwiftAula01
//
//  Created by Usuário Convidado on 24/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    
    //é disparado quando clicado em qualquer area da view que não é clicavel (Ex. Botão)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfEmail.delegate = self
        
    }
    
    @IBAction func register(_ sender: Any) {
        view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        }
        else if textField == tfEmail {
            tfPassword.becomeFirstResponder()
        }        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
}

