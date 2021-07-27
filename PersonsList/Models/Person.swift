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
            data.nameList.shuffle()
            data.emailList.shuffle()
            data.phoneList.shuffle()
            data.surnameList.shuffle()
            
            let randomName = data.nameList.first ?? ""
            let randomSurname = data.surnameList.first ?? ""
            let randomPhone = data.phoneList.first ?? ""
            let randomEmail = data.emailList.first ?? ""
            
            data.nameList.removeFirst()
            data.surnameList.removeFirst()
            data.phoneList.removeFirst()
            data.emailList.removeFirst()
            
            persons.append(Person(name: randomName, surname: randomSurname, phone: randomPhone, email: randomEmail))
            
        }
        
        return persons
    }
}


