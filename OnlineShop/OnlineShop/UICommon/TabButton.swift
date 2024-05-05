//
//  TabButton.swift
//  OnlineShop
//
//  Created by tuan anh on 30/4/24.
//

import SwiftUI

struct TabButton: View {
    
    @State var title: String = "Title"
    @State var icon: String = "account"
    var isSelect: Bool = false
    var didSelect: (() -> ())
    
    var body: some View {
        Button {
            debugPrint("tab Button tapped")
            didSelect()
        } label: {
            VStack {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
            }
            
        }
        .foregroundColor(isSelect ? .primaryApp : .primaryText)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton{
            
        }
    }
}
