//
//  WeatherButton.swift
//  WeatherAppUI
//
//  Created by tuan anh on 08/03/2024.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
    struct Preview: PreviewProvider{
        static var previews: some View{
            WeatherButton(title: "test", textColor: .white, backgroundColor: .blue)
        }
    }
