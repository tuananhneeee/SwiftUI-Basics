//
//  MainTabView.swift
//  OnlineShop
//
//  Created by tuan anh on 21/4/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack{
            VStack {
//                Spacer()

                HStack  {
                    Button {
                        MainViewModel.shared.isUserLogin = false
                    } label: {
                        Text("Logout")
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    MainTabView()
}
