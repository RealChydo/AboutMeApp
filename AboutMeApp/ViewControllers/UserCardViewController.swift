//
//  UserCardViewController.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 10.08.2023.
//

import UIKit

final class UserCardViewController: UIViewController {
    
    @IBOutlet private var fullNameLabel: UILabel!
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var companyLabel: UILabel!
    @IBOutlet private var departmentLabel: UILabel!
    @IBOutlet private var positionLabel: UILabel!
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = imageView.frame.height / 2
        
        fullNameLabel.text = user.person.name + " " + user.person.surname
        nameLabel.text = "Имя: " + user.person.name
        surnameLabel.text = "Фамилия: " + user.person.surname
        companyLabel.text = "Компания: " + user.person.job.companyName
        departmentLabel.text = "Отдел: " + user.person.job.department
        positionLabel.text = "Должность: " + user.person.job.position
    }

}
