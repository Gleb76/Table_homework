//
//  DetailViewController.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var person: Person?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            nameLabel.text = person.fullName
            phoneNumberLabel.text = person.phoneNumber
            emailLabel.text = person.email
        }
        
    }
}
