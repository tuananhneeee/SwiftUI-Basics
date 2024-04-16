//
//  MainViewModel.swift
//  OnlineShop
//
//  Created by tuan anh on 10/4/24.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared : MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPsd: String = ""
    @Published var isShowPassword: Bool = false
    
    @Published var showError = false
    @Published var errorMessgae = ""
    
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
                    self.errorMessgae = response.value(forKey: KKey.message) as? String ?? "Success"
                    self.showError = true
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
    
    
    
    
    
}


 
