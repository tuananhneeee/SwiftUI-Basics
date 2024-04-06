//
//  RoundButton.swift
//  OnlineShop
//
//  Created by tuan anh on 6/4/24.
//

import SwiftUI

struct RoundButton: View {
    
    @State var title: String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        Button {
            didTap? ()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 28))
                .foregroundColor(.darkGray)
                .multilineTextAlignment(.center)

        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .clipShape(RoundedRectangle(cornerRadius: 10,style: .continuous))
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
