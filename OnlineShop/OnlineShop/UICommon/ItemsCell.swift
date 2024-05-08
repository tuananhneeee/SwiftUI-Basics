//
//  ItemsCell.swift
//  OnlineShop
//
//  Created by tuan anh on 4/5/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ItemsCell: View {
    @State var pObj: ProductModel = ProductModel(dict: [:])
    var didAddCart: ( ()->() )?
    
    var body: some View {
        VStack {
            
                WebImage(url: URL(string: pObj.image))
                .resizable()
                .indicator(.activity) // Activity Indicator
                .transition(.fade(duration: 0.5)) // Fade Transition with duration
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Text(pObj.name)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            Text("\(pObj.unitValue)\(pObj.unitName), price")
                .font(.customfont(Inter.regular, fontSize: 14))
                .foregroundStyle(Color.secondaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack {
                Text("\(pObj.offerPrice ?? pObj.price, specifier: "%.2f")")
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
    ItemsCell(pObj: ProductModel(dict: [                "prod_id": 10,
                                                        "cat_id": 1,
                                                        "brand_id": 1,
                                                        "type_id": 1,
                                                        "name": "Bell Peppers",
                                                        "detail": "Bell peppers (Capsicum annuum) are fruits that belong to the nightshade family. They are low in calories and rich in vitamin C and other antioxidants, making them an excellent addition to a healthy diet.",
                                                        "unit_name": "gm",
                                                        "unit_value": "250",
                                                        "nutrition_weight": "100g",
                                                        "price": 1.99,
                                                        "image": "http://localhost:3001/img/product/20230731101409149FomkojOsMt.png",
                                                        "cat_name": "Frash Fruits & Vegetable",
                                                        "type_name": "Pulses",
                                                        "is_fav": 1])) {
        
    }
}
