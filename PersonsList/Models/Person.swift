//
//  Person.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//


struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    var fullName: String {
        "\(name) \(surname)"
    }
}

let data = DataManager()

extension Person {
    private func getRandomName() -> String {
        data.nameList.randomElement() ?? ""
    }
    
    private func getRandomSurname() -> String {
        data.surnameList.randomElement() ?? ""
        
    }
    
    private func getRandomEmail() -> String {
        data.emailList.randomElement() ?? ""
    }
    
    private func getRandomPhone() -> String {
        data.phoneList.randomElement() ?? ""
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        for _ in data.nameList {
            let randomName = data.nameList.randomElement() ?? ""
            let randomSurname = data.surnameList.randomElement() ?? ""
            let randomPhone = data.phoneList.randomElement() ?? ""
            let randomEmail = data.emailList.randomElement() ?? ""
            
            persons.append(Person(name: randomName, surname: randomSurname, phone: randomPhone, email: randomEmail))
            
        }
        
        return persons
    }
}


