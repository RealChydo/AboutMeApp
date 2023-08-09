//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 06.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? UITabBarController {
            tabBarController.viewControllers?.forEach { viewController in
                if let firstVC = viewController as? WelcomeViewController {
                    firstVC.user = user
                } else if let navigationVC = viewController as? UINavigationController {
                    let secondVC = navigationVC.topViewController as? UserCardViewController
                    secondVC?.user = user
                }
            }
        }
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAllert(
                    withTitle: "Invalid User Name or password",
                    andMessage: "Please, check your User Name and password"
                )
            return false
            }
        return true
    }
    
    
    
    @IBAction private func forgotUserNameTapped() {
        showAllert(withTitle: "Oops!", andMessage: "Your name is \(user.login)")
    }
    
    @IBAction private func forgotPasswordTapped() {
        showAllert(withTitle: "Oops!", andMessage: "Your password is \(user.password)")
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

