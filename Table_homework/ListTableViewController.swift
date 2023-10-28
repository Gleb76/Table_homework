//
//  ListOfContactsTableViewController.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    let dataStore = DataStore()
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        generateRandomPeople()
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "MyTableViewCell")
        tableView.register(UINib(nibName: "EmailTableViewCell", bundle: nil), forCellReuseIdentifier: "EmailTableViewCell")
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
        // #warning Incomplete implementation, return the number of sections
        return people.count
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = people[indexPath.section]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
            cell.customPhoneImageView.image = UIImage(systemName: "phone.fill")
            cell.customPhoneLabel.text = "PhoneNumber: \(person.phoneNumber)"
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EmailTableViewCell", for: indexPath) as! EmailTableViewCell
            cell.customEmailImageView.image = UIImage(systemName: "mail.fill")
            cell.customEmailLabel.text = "Email: \(person.email)"
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = people[section]
        return person.fullName
    }
}
