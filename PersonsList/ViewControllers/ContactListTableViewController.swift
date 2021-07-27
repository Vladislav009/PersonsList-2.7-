//
//  ContactListTableViewController.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    private var personList = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: person)
    }


    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailContactVC = segue.destination as? DetailContactViewController else { return }
        detailContactVC.person = sender as? Person
    }
    

}
