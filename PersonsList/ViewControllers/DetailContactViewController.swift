//
//  DetailContactViewController.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//

import UIKit

class DetailContactViewController: UIViewController {

    @IBOutlet weak var phoneTextField: UILabel!
    @IBOutlet weak var emailTextField: UILabel!
    
    var person: Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneTextField.text = "Phone: \(person.details.phone)"
        emailTextField.text = "Email: \(person.details.email )"
        
        navigationItem.title = person.fullName
    }

}
