//
//  UserModel.swift
//  OnlineShop
//
//  Created by tuan anh on 21/4/24.
//

import SwiftUI

struct UserModel: Identifiable, Equatable {

    var id: Int = 0
    var username: String = ""
    var name: String = ""
    var mobile: String = ""
    var mobileCode: String = ""
    var auth_token: String = ""
    
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "user_id") as? Int ?? 0
        self.username = dict.value(forKey: "username") as? String ?? ""
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.mobile = dict.value(forKey: "mobile") as? String ?? ""
        self.mobileCode = dict.value(forKey: "mobile_code") as? String ?? ""
        self.auth_token = dict.value(forKey: "auth_token") as? String ?? ""
    }
    
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}

