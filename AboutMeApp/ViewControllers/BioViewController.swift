//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 10.08.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = user.person.fullName + " Bio"
        bioLabel.text = user.person.bio
    }
    
}
