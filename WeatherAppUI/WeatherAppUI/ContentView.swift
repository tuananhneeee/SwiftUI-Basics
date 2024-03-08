//
//  ContentView.swift
//  WeatherAppUI
//
//  Created by tuan anh on 08/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackGroundView(isNight: isNight)
            
            VStack{
                
                CityTextView(cityName: "Ba Dinh, Hanoi")
                
                MainWeatherView(imageName: isNight ? "moon.fill" : "sun.max.fill",
                                temp: 35)
                
                HStack(spacing:30){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temp: 30)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.rain.fill",
                                   temp: 28)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temp: 35)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.fill",
                                   temp: 30)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temp: 30)
                }
                Spacer()
                
                Button(action: {isNight.toggle()}, label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: isNight ? .blue: .white,
                                  backgroundColor: isNight ? .lightBlue: Color("nightBlue"))
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
    var isNight:Bool
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
//                                                   isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temp: Int
    var body: some View {
        VStack(spacing:10) {
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°C")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


