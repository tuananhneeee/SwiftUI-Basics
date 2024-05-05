//
//  HomeView.swift
//  OnlineShop
//
//  Created by tuan anh on 23/4/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM = HomeViewModel.shared
    
    var body: some View {
        ZStack{
            ScrollView {
                VStack {
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                    

                    SearchTextField(txt: $homeVM.txtSearching, placeholder: "Search")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                }
                .padding(.top, .topInsets)
                
                Image("discount")
                    .resizable()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .padding(.horizontal, 20)
                
                SectionTitleAll(title: "Promo", titleAll: "See all") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing:20) {
                        ForEach (0...5, id:\.self) {
                            index in
                            ItemsCell {
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)

                }
                
                SectionTitleAll(title: "New", titleAll: "See all") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing:20) {
                        ForEach (0...5, id:\.self) {
                            index in
                            ItemsCell {
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)

                }
                
                SectionTitleAll(title: "Must Try", titleAll: "See all") {
                    
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing:20) {
                        ForEach (0...5, id:\.self) {
                            index in
                            CategoryCell(color:Color(hex: "F4A88C")) {
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)

                }
                .padding(.bottom, 8)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing:20) {
                        ForEach (0...5, id:\.self) {
                            index in
                            ItemsCell {
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)

                }
                .padding(.bottom, 15)
                
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
