//
//  OnlineShopApp.swift
//  OnlineShop
//
//  Created by tuan anh on 3/4/24.
//

import SwiftUI

@main
struct OnlineShopApp: App {
    
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            
            NavigationView{
                if mainVM.isUserLogin {
                    MainTabView()
                } else {
                    WelcomeView()
                }
            }
        }
    }
}
