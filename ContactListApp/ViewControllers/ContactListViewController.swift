//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Paul Matar on 22.03.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var personList: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? ContactDetailViewController else { return }
        personDetailVC.person = sender as? Person
    }
}


    // MARK: - UITableViewDelegate

extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: person)
    }
}
