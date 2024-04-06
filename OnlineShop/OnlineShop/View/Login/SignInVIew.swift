//
//  SignInVIew.swift
//  OnlineShop
//
//  Created by tuan anh on 6/4/24.
//

import SwiftUI

struct SignInVIew: View {
    
    @State var txtMobile: String = ""
    
    var body: some View {
        ZStack (alignment: .top) {
            
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
                VStack {
                    Text("Get to know more about doing an mobile app using SwiftUI")
                        .font(.customfont(.bold, fontSize: 28))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 25)
                    HStack {
                        Button {
                        
                        } label: {
                            Image("")
                            
                            Text("+84")
                                .font(.customfont(.regular, fontSize: 18))
                                .foregroundStyle(Color.primaryText)
                        }
                        
                        TextField("Enter your number:", text: $txtMobile)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    }
                    
                    
                    
                    Divider()
                        .padding(.bottom)
                    
                    Text("Get to know more about doing an mobile app using SwiftUI")
                        .font(.customfont(.bold, fontSize: 28))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 25)

                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth * 0.7)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SignInVIew()
}
