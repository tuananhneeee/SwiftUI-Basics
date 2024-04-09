//
//  LogInView.swift
//  OnlineShop
//
//  Created by tuan anh on 9/4/24.
//

import SwiftUI

struct LogInView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
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
                Spacer()
                    .frame(height: .screenWidth * 0.12)
                Text("Logging")
                    .font(.customfont(.regular, fontSize: 20))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
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
