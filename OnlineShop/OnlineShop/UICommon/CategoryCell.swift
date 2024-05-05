//
//  CategoryCell.swift
//  OnlineShop
//
//  Created by tuan anh on 4/5/24.
//

import SwiftUI

struct CategoryCell: View {
    @State var color: Color = Color.red
    var didAddCart: ( ()->() )?

    var body: some View {
        HStack {
            
            Image("bibimbap")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            
            Text("Carrot")
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            
        }
        .padding(15)
        .frame(width: 200, height: 100)
        .background(color.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    CategoryCell()
}
