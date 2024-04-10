//
//  LogInView.swift
//  OnlineShop
//
//  Created by tuan anh on 9/4/24.
//

import SwiftUI

struct LogInView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack {
                
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)

                Text("Logging")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your email and passwords")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundStyle(Color.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(txt: $loginVM.txtEmail, title: "Email", placeholder: "Enter your email here", keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                
                LineSecureTextField(title: "Password", placeholder: "Enter your password here",txt: $loginVM.txtPsd, isShowPassword: $loginVM.isShowPassword)

                
                Spacer()
            }
            .padding(.top,.topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack {
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                        
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top,.topInsets)
            .padding(.horizontal, 20)

        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LogInView()
}