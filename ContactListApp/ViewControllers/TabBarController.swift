//
//  TabBarController.swift
//  ContactListApp
//
//  Created by Paul Matar on 22.03.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    let personList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewControllers()
    }

    private func loadViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.personList = personList
            } else if let detailedListVC = viewController as? DetailedListViewController {
                detailedListVC.personList = personList
            }
        }
    }
    
}
