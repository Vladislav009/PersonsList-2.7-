//
//  ContactDetailListTableViewController.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//

import UIKit

class ContactDetailListTableViewController: UITableViewController {
    
    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContact", for: indexPath)
        
        let person = contactList[indexPath.section]
        let personDetail = person.details[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = personDetail
        
        switch indexPath.row {
        case 0:
            if let phoneImage = UIImage(systemName: "phone") {
                content.image = phoneImage
            }
        default:
            if let trayImage = UIImage(systemName: "tray") {
                content.image = trayImage
            }
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactList[section].fullName
    }
    
}
