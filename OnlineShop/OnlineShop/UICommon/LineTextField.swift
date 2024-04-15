//
//  LineTextField.swift
//  OnlineShop
//
//  Created by tuan anh on 10/4/24.
//

import SwiftUI

struct LineTextField: View {
    
    
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @State var keyboardType: UIKeyboardType = .default
//    @State var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTile)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
                
            TextField(placeholder, text: $txt)
                .keyboardType(keyboardType)
                .autocorrectionDisabled(true)
                .frame(height:40)
            
            Divider()
        }
    }
}


struct LineSecureTextField: View {
    
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTile)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if (isShowPassword) {
                TextField(placeholder, text: $txt)
                    .autocorrectionDisabled(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height:40)
            } else {
                SecureField(placeholder, text: $txt)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height:40)

            }
            Divider()
        }
    }
}


struct LineTextField_Previews:PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        LineTextField(txt: $txt)
            .padding(20)
    }
}
