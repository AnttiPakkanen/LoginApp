//
//  ViewController.swift
//  LoginApp
//
//  Created by автосалон on 26.01.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    

    @IBAction func forgotUserNameButtonPressed(_ sender: UIButton) {
        let alertUserName = UIAlertController(title: "Ooops!", message: "Your user name is Sky", preferredStyle: .alert)
        let closeActionForgotUserName = UIAlertAction(title: "Close", style: .default)
        
        alertUserName.addAction(closeActionForgotUserName)
        present(alertUserName, animated: true)
    }
    
    
    @IBAction func forgotPasswordButtonPressed(_ sender: UIButton) {
        let alertForgotPassword = UIAlertController(title: "Ooops!", message: "Your password is 123456", preferredStyle: .alert)
        let closeActionForgotPassword = UIAlertAction(title: "Close", style: .default)
        
        alertForgotPassword.addAction(closeActionForgotPassword)
        present(alertForgotPassword, animated: true)
    }
    
    
}

