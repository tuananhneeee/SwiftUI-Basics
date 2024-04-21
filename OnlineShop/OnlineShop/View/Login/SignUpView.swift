//
//  SignUpView.swift
//  OnlineShop
//
//  Created by tuan anh on 16/4/24.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct SignUpView_PreViews: PreviewProvider {
    static var previews: some View {
        SignUpView()

    }
}
