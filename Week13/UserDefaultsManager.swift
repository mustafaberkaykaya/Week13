//
//  UserDefaultsManager.swift
//  Week13
//
//  Created by Mustafa Berkay Kaya on 2.01.2022.
//

import Foundation
import UIKit

class UserDefaultsManager {
    private init () {}
    static let shared = UserDefaultsManager()
    
    public func saveStringData(value: String, key: String) {
        UserDefaults.standard.setValue(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public func saveBooleandData(value: Bool, key: String) {
        UserDefaults.standard.setValue(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public func returnData(key: String) -> Any? {
      return UserDefaults.standard.value(forKey: key)
    }
}
 
