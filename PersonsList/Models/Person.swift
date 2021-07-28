//
//  Person.swift
//  PersonsList
//
//  Created by Vladislav Kulak on 27.07.2021.
//


struct Person {
    let name: String
    let surname: String
    let details: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

let data = DataManager()

extension Person {
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
            
            persons.append(Person(
                name: randomName,
                surname: randomSurname,
                details: [
                    randomPhone,
                    randomEmail
                ]
            )
            )
            
        }
        
        return persons
    }
}


