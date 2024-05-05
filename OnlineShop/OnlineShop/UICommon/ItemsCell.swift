//
//  ItemsCell.swift
//  OnlineShop
//
//  Created by tuan anh on 4/5/24.
//

import SwiftUI

struct ItemsCell: View {
    
    var didAddCart: ( ()->() )?
    
    var body: some View {
        VStack {
            
            Image("color_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
            
            Spacer()
            
            Text("Carrot")
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            Text("1 pc, price")
                .font(.customfont(Inter.regular, fontSize: 14))
                .foregroundStyle(Color.secondaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack {
                Text("100k VND")
                    .font(.customfont(.semibold, fontSize: 18))
                    .foregroundStyle(Color.primaryText)
                    .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                Button {
                    didAddCart?()
                } label: {
                    Image("add_")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
                .frame(width: 45, height: 45)
                .background(Color.primaryApp)
                .clipShape(Circle())
            }
            


        }
        .padding(15)
        .frame(width: 200, height: 230)
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
        }
    }
}

#Preview {
    ItemsCell()
}
