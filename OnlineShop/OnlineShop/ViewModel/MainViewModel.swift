//
//  MainViewModel.swift
//  OnlineShop
//
//  Created by tuan anh on 10/4/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared : MainViewModel = MainViewModel()
    
    @Published var txtUsername: String = ""
    @Published var txtEmail: String = ""
    @Published var txtPsd: String = ""
    @Published var isShowPassword: Bool = false
    
    @Published var showError = false
    @Published var errorMessgae = ""
    @Published var isUserLogin: Bool = false
    @Published var userObj: UserModel = UserModel(dict: [:])
    
    init() {
        
        if ( Utils.UDValueBool(key: Global.userLogin) ) {
            self.setUserData(uDict: Utils.UDValue(key: Global.userPayload) as? NSDictionary ?? [:])
        } else {
            
        }
        
        #if DEBUG
        txtUsername = "user4"
        txtEmail = "test6@gmail.com"
        txtPsd = "123456"
        #endif
    }
    
    //MARK: ServiceCall
    func serviceCallLogin(){
        
        
        if (!txtEmail.isValidEmail) {
            self.errorMessgae = "please enter a valid email"
            self.showError = true
            print("txtEmail: \(txtEmail)")
            return
        }
        
        if (txtPsd.isEmpty) {
            self.errorMessgae = "please enter a valid password"
            self.showError = true
            return
        }
        
        ServiceCall.post(parameter: ["email": txtEmail, "password": txtPsd, "dervice_token":""], path: Global.SV_LOGIN) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    print (response);
                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
                    
                }else {
                    self.errorMessgae = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessgae = error?.localizedDescription ?? "Fail"
            self.showError = true
        }
    }
    
    
    func serviceCallSignUp(){
        
        
        if (!txtEmail.isValidEmail) {
            self.errorMessgae = "please enter a valid email"
            self.showError = true
            print("txtEmail: \(txtEmail)")
            return
        }
        
        if (txtUsername.isEmpty) {
            self.errorMessgae = "please enter a Username"
            self.showError = true
            return
        }
        
        if (txtPsd.isEmpty) {
            self.errorMessgae = "please enter a valid Password"
            self.showError = true
            return
        }
        
        ServiceCall.post(parameter: ["email": txtEmail, "username": txtUsername, "password": txtPsd, "dervice_token":""], path: Global.SV_SIGNUP) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    print (response);
                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
                }else {
                    self.errorMessgae = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessgae = error?.localizedDescription ?? "Fail"
            self.showError = true
        }
    }
    func setUserData(uDict: NSDictionary ) {
        
        Utils.UDSET(data: uDict , key: Global.userPayload)
        Utils.UDSET(data: true, key: Global.userLogin)

        self.userObj = UserModel(dict: uDict)
        self.isUserLogin = true
        
        self.txtUsername = ""
        self.txtEmail = ""
        self.txtPsd = ""
        self.isShowPassword = false
    }
    
}


 
