//
//  Person.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//


struct Person {
    var name: String {
        getRandomName()
    }
    
    var surname: String {
        getRandomSurname()
    }
    
    var phone: String {
        getRandomPhone()
    }
    
    var email: String {
        getRandomEmail()
    }
    
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
        [
            Person(),
            Person(),
            Person(),
            Person(),
            Person()
        ]
    }
}
