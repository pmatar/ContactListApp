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
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                contactListVC.personList = personList
            } else if let detailedListVC = navigationVC.topViewController as? DetailedListViewController {
                detailedListVC.personList = personList
            }
        }
    }
    
}
