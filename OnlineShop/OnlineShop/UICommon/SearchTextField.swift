//
//  SearchTextField.swift
//  OnlineShop
//
//  Created by tuan anh on 3/5/24.
//

import SwiftUI

struct SearchTextField: View {
        
        
        @Binding var txt: String
        @State var placeholder: String = "Placeholder"
    //    @State var isPassword: Bool = false
        
        var body: some View {
            HStack(spacing: 15) {
                
                Image("loupe")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    
                TextField(placeholder, text: $txt)
                    .font(.customfont(.regular, fontSize: 17))
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                    .frame(minWidth: 0, maxWidth: .infinity)
                }
            .frame(height: 30)
            .padding(15)
            .background(Color(hex: "F2F3F2"))
            .clipShape(RoundedRectangle(cornerRadius: 16,style: .continuous))
        }
}

struct SearchTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        SearchTextField(txt: $txt, placeholder: "Search")
            .padding(15)
    }
}
