//
//  User.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 4.01.2022.
//

import Foundation

class User {
    let name: String?
    let surname: String?
    let email: String?
    let password: String?
    let username: String?
    
    init(name:String, surname:String, email:String, password:String, username:String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.password = password
        self.username = username
    }
    
    func printDescription() {
        print("Name: \(String(describing: self.name))")
        print("Surname: \(String(describing: self.surname))")
        print("email: \(String(describing: self.email))")
        print("password: \(String(describing: self.password))")
        print("username: \(String(describing: self.username))")
    }
}
