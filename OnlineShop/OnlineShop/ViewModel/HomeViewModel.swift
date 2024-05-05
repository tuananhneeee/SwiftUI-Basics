//
//  HomeViewModel.swift
//  OnlineShop
//
//  Created by tuan anh on 23/4/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    static var shared: HomeViewModel = HomeViewModel()
    
    @Published var selectTab: Int = 0
    @Published var txtSearching: String = ""
}
