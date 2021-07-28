//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 28.07.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    private var personList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        move()
    }
    
   private func move() {
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let contactListVC = navigationVC.visibleViewController as? ContactListTableViewController{
                    contactListVC.contactList = personList
                } else if let contactDetailListTVC = navigationVC.topViewController as? ContactDetailListTableViewController {
                    contactDetailListTVC.contactList = personList
                }
            }
        }
    }

}
