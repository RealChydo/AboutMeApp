//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 06.08.2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!
    
    let userNamePattern = "qwerty"
    let passwordPattern = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userNameText = userNameTF.text
    }
    
    
    @IBAction private func loginButtonTapped() {
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAllert(withTitle: "User Name is empty", andMessage: "Please, enter user name")
            return
        }
        guard let inputText = passwordTF.text, !inputText.isEmpty else {
            showAllert(withTitle: "Password is empty", andMessage: "Please, enter password")
            return
        }
        
        let isUserNameValid = userNameTF.text == userNamePattern
        let isPasswordValid = passwordTF.text == passwordPattern
        
        if !isUserNameValid || !isPasswordValid {
            showAllert(
                withTitle: "Invalid User Name or password",
                andMessage: "Please, check your User Name and password"
            )
            return
        }
    }
    
    @IBAction private func forgotUserNameTapped() {
        showAllert(withTitle: "Oops!", andMessage: "Your name is qwerty")
    }
    
    @IBAction private func forgotPasswordTapped() {
        showAllert(withTitle: "Oops!", andMessage: "Your password is 1234")
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAllert(withTitle title: String, andMessage message: String){
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) {_ in self.passwordTF.text = ""}
        
        present(alert, animated: true)
        alert.addAction(okAction)
    }
    

}

