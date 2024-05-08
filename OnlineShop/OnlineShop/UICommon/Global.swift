//
//  Global.swift
//  OnlineShop
//
//  Created by tuan anh on 15/4/24.
//

import SwiftUI

struct Global {
 static let AppName = "Online Groceries"
    static let BASE_URL = "http://localhost:3001/api/app/"
    
    static let userPayload = "user_payload"
    static let userLogin = "user_login"
    
    static let SV_LOGIN = BASE_URL + "login"
    static let SV_SIGNUP    = BASE_URL + "sign_up"
    static let SV_HOME    = BASE_URL + "home"

}

struct KKey {
    static let status = "status"
    static let message = "message"
    static let payload = "payload"
}

class Utils {
    class func UDSET(data:Any, key: String) {
        UserDefaults.standard.set(data, forKey: key) 
        UserDefaults.standard.synchronize()
    }

    class func UDValue(key: String) -> Any {
        UserDefaults.standard.value(forKey: key) as Any
    }
    
    class func UDValueBool(key: String) -> Bool {
        UserDefaults.standard.value(forKey: key) as? Bool ?? false
    }
    
    class func UDValueTrueBool(key: String) -> Bool {
        UserDefaults.standard.value(forKey: key) as? Bool ?? true
    }
    
    class func UDRemove(data:Any, key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
}
