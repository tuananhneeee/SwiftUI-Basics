//
//  SignUpView.swift
//  OnlineShop
//
//  Created by tuan anh on 16/4/24.
//

import SwiftUI



struct SignUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
                        
            VStack { //Back button
                HStack {
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            
            //
            
            
            ScrollView { //
                VStack {
                    
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .padding(.bottom, .screenWidth * 0.1)


                    Text("Sign Up")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundStyle(Color.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 4)
                    
                    Text("Enter your credentials to continue")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundStyle(Color.secondaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, .screenWidth * 0.1)
                    
                    LineTextField(txt: $mainVM.txtUsername, title: "Username", placeholder: "Enter your username here")
                        .padding(.bottom, .screenWidth * 0.07)
                    
                    LineTextField(txt: $mainVM.txtEmail, title: "Email", placeholder: "Enter your email here", keyboardType: .emailAddress)
                        .padding(.bottom, .screenWidth * 0.07)
                    
                    LineSecureTextField(title: "Password", placeholder: "Enter your password here",txt: $mainVM.txtPsd, isShowPassword: $mainVM.isShowPassword)
                        .padding(.bottom, .screenWidth * 0.02)

                    VStack {
                        Text("By continuing you agree to our ")
                            .font(.customfont(.medium, fontSize: 14))
                            .foregroundStyle(Color.secondaryText)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        HStack {
                            Text("Term of Services")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                            Text(" and ")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundStyle(Color.secondaryText)
                            Text("Privacy Policy.")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    RoundButton(title: "Sign Up"){
                        mainVM.serviceCallSignUp()
                    }
                        .padding(.bottom, .screenWidth * 0.05)
                    
                    NavigationLink {
                        LogInView()
                    } label: {
                        
                        HStack {
                            Text("Already have an account?")
                                .font(.customfont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryText)
                            
                            Text("Sign In")
                                .font(.customfont(.semibold, fontSize: 14))
                                .foregroundStyle(Color.primaryApp)
                        }
                    }


                    Spacer()
                }
                .padding(.top,.topInsets + 64)
                .padding(.horizontal, 20)
                .padding(.bottom, .bottomInsets)
            }

        }
        .alert(isPresented: $mainVM.showError) {
            
            Alert(title: Text(Global.AppName), message: Text( mainVM.errorMessgae),
                  dismissButton: .default(Text("OK")))
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .tint(Color.accentColor)

    }
}

struct SignUpView_PreViews: PreviewProvider {
    static var previews: some View {
        SignUpView()

    }
}
