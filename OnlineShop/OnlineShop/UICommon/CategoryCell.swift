//
//  CategoryCell.swift
//  OnlineShop
//
//  Created by tuan anh on 4/5/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct CategoryCell: View {
    @State var tObj: TypeModel = TypeModel(dict: [                "type_id": 1,
                                                                  "type_name": "Pulses",
                                                                  "image": "http://localhost:3001/img/type/202307261610181018aVOpgmY1W1.png",
                                                                  "color": "F8A44C"])
    @State var color: Color = Color.red
    var didAddCart: ( ()->() )?

    var body: some View {
        HStack {
            
            WebImage(url: URL(string: tObj.image))
                .resizable()
                .indicator(.activity) // Activity Indicator
                .transition(.fade(duration: 0.5)) // Fade Transition with duration
                .scaledToFit()
                .frame(width: 70, height: 70)
            
            
            Text(tObj.name)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.primaryText)
                .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
            
        }
        .padding(15)
        .frame(width: 200, height: 100)
        .background(tObj.color.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    CategoryCell(tObj: TypeModel(dict: [                "type_id": 1,
                                                        "type_name": "Pulses",
                                                        "image": "http://localhost:3001/img/type/202307261610181018aVOpgmY1W1.png",
                                                        "color": "F8A44C"]))
}
