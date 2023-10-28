//
//  DataStore.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import Foundation

class DataStore {
    var names: [String] = ["John", "Jane", "Michael", "Emily", "David"]
    var surnames: [String] = ["Doe", "Smith", "Johnson", "Williams", "Brown"]
    var emails: [String] = ["john@example.com", "jane@example.com", "michael@example.com", "emily@example.com", "david@example.com"]
    var phoneNumbers: [String] = ["1234567890", "9876543210", "5555555555", "9999999999", "1111111111"]
    
    func generateRandomPerson() -> Person {
        let randomIndex = Int.random(in: 0..<names.count)
        let fullName = "\(names[randomIndex]) \(surnames[randomIndex])"
        let email = emails[randomIndex]
        let phoneNumber = phoneNumbers[randomIndex]
        
        names.remove(at: randomIndex)
        surnames.remove(at: randomIndex)
        emails.remove(at: randomIndex)
        phoneNumbers.remove(at: randomIndex)
        
        return Person(fullName: fullName, email: email, phoneNumber: phoneNumber)
    }
}
