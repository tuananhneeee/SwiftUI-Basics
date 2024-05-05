//
//  WelcomeView.swift
//  OnlineShop
//
//  Created by tuan anh on 3/4/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome to the test app")
                    .font(.customfont(.bold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)

                
                Text("Welcome to the test app")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                
                NavigationLink {
                    SignInVIew()
                } label: {
                    RoundButton(title: "Get Started") {
                    }
                }

                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
        .tint(Color.accentColor)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeView()
        }
    }
}
