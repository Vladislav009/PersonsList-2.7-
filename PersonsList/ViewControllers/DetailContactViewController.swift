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

        phoneTextField.text = "Phone: \(person.phone)"
        emailTextField.text = "Email: \(person.email )"
        
        navigationItem.title = person.fullName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
