//
//  SignInVIew.swift
//  OnlineShop
//
//  Created by tuan anh on 6/4/24.
//

import SwiftUI
import CountryPicker

struct SignInVIew: View {
    
    @State var txtMobile: String = ""
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    var body: some View {
        ZStack {
            
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                                
                Spacer()
            }
            
            ScrollView {
                VStack (alignment: .leading) {
                    Text("Get to know more about SwiftUI")
                        .font(.customfont(.bold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    HStack {
                        Button {
                            isShowPicker = true
                        } label: {
//                            Image("")
                            
                            if let countryObj = countryObj {
                                Text("\(countryObj.isoCode.getFlag())")
                                    .font(.customfont(.regular, fontSize: 26))
                                
                                Text("+\(countryObj.phoneCode)")
                                    .font(.customfont(.regular, fontSize: 18))
                                    .foregroundStyle(Color.primaryText)
                            }

                        }
                        
                        TextField("Enter your number:", text: $txtMobile)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    }
                    
                    NavigationLink {
                        LogInView()
                    } label: {
                        Text("Continue with your Email")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5383EC"))
                    .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                    .padding(.bottom, 8)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("Continue with your new Email")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, maxHeight: 60)
                    .background(Color.primaryApp)
                    .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                    .padding(.bottom, 8)
                    
                    
                    Divider()
                        .padding(.bottom, 25)
                    
                    Text("Or connect with social media")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.textTile)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 25)
                    
                    Button {
                    } label: {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Google")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)

                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5383EC"))
                    .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                    .padding(.bottom, 8)

                    
                    Button {
                    } label: {
                        Image("fb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Facebook")
                            .font(.customfont(.regular, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)

                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))

                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth * 0.6)
            }
        }
        .onAppear{
            self.countryObj = Country(phoneCode: "84", isoCode: "VN")
        }
        .sheet(isPresented: $isShowPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .tint(Color.accentColor)
    }
}

#Preview {
    SignInVIew()
}
