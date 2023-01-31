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
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        if userNameTextField.text != userName && passwordTextField.text != password ||
        userNameTextField.text == userName && passwordTextField.text != password ||
        userNameTextField.text != userName && passwordTextField.text == password {
            let alertLogIn = UIAlertController(title: "INVALID USER NAME OR PASSWORD", message: "Please enter correct user name or password", preferredStyle: .alert)
            let closeLogIn = UIAlertAction(title: "Close", style: .default)
            
            alertLogIn.addAction(closeLogIn)
            present(alertLogIn, animated: true)
            
            passwordTextField.text = nil
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomViewController else { return }
        settingsVC.welcomLabel = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomViewController else { return }
        userNameTextField.text = nil
        passwordTextField.text = nil
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
    
    private let userName = "Sky"
    private let password = "123456"
}

