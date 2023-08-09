//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 06.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet private var welcomeTextField: UILabel!
    @IBOutlet private var emojiTF: UILabel!
    
    var userNameText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextField.text = "Welcome, \(userNameText ?? "nil")"
        emojiTF.text = "🫡"
    }
}
