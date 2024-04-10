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
}


