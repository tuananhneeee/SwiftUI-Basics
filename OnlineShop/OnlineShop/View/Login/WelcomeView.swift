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
            Image("circle-2")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image(systemName: "rainbow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .symbolRenderingMode(.multicolor)
                    .padding(.bottom, 8)
                
                Text("Welcome to the test app")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.darkGray)
                    .multilineTextAlignment(.center)

                
                Text("Welcome to the test app")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.darkGray.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                Spacer()
                    .frame(height: 60)
            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
