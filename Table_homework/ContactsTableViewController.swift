//
//  ContactsTableViewController.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    let dataStore = DataStore()
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        generateRandomPeople()
    }
    func generateRandomPeople() {
        for _ in 0..<5 {
            let person = dataStore.generateRandomPerson()
            people.append(person)
        }
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = people[indexPath.row]
        cell.textLabel?.text = person.fullName
        cell.detailTextLabel?.text = person.email
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        if let indexPath = tableView.indexPathForSelectedRow {
            let person = people[indexPath.row]
            detailVC.person = person
        }
    }
    
}


