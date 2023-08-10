//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 06.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet private var welcomeTextField: UILabel!
    @IBOutlet private var myNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextField.text = "Welcome, " + user.userName
        myNameLabel.text = "My name is " + user.person.fullName
    }
}
