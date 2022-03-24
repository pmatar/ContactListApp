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
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let detailedListVC = viewControllers?.last as? DetailedListViewController else { return }
        
        contactListVC.personList = personList
        detailedListVC.personList = personList
    }
    
}
