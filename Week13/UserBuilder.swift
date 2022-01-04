//
//  UserBuilder.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 4.01.2022.
//

import Foundation

class UserBuilder {
   private var name = ""
   private var surname = ""
   private var email = ""
   private var password = ""
   private var username = ""
   
    func setName(name: String) {
        self.name = name
    }
    
    func setSurname(surname: String) {
        self.surname = surname
    }
    
    func setEmail(email: String) {
        self.email = email
    }
    
    func setPassword(password: String) {
        self.password = password
    }
    
    func setUsername(username: String) {
        self.username = username
    }
    
    func buildObject() -> User {
        return User(name: self.name, surname: self.surname, email: self.email, password: self.password, username: self.username)
    }
    
}
