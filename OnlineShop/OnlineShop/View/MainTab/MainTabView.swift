//
//  MainTabView.swift
//  OnlineShop
//
//  Created by tuan anh on 21/4/24.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    
    
    
    var body: some View {
        VStack{

            TabView(selection: $homeVM.selectTab) {
                HomeView().tag(0)
                OrderView().tag(1)
                OrderView().tag(2)
                OrderView().tag(3)
                OrderView().tag(4)
                
            }
//            .onAppear{
//                UIScrollView.appearance().isScrollEnabled = false
//            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: homeVM.selectTab) { oldValue, newValue in
                debugPrint("old select tab: \(oldValue)")
                debugPrint("select tab: \(newValue)")
                
            }
            
            HStack {
                
                TabButton(title: "Home", icon: "search", isSelect: homeVM.selectTab == 0) {
                    
                    print("button Tab")
                    DispatchQueue.main.async {
                        withAnimation {
                            homeVM.selectTab = 0
                        }
                    }
                }
                
                TabButton(title: "Order now", icon: "lunch", isSelect: homeVM.selectTab == 1) {
                    
                    DispatchQueue.main.async {
                        withAnimation {
                            homeVM.selectTab = 1
                        }
                    }
                }
                
                TabButton(title: "Favorite", icon: "wishlist", isSelect: homeVM.selectTab == 2) {
                    DispatchQueue.main.async {
                        withAnimation {
                            homeVM.selectTab = 2
                        }
                    }
                }
                
                TabButton(title: "Your Order", icon: "order", isSelect: homeVM.selectTab == 3) {
                    DispatchQueue.main.async {
                        withAnimation {
                            homeVM.selectTab = 3
                        }
                    }
                }
                
                TabButton(title: "Account", icon: "account", isSelect: homeVM.selectTab == 4) {
                    DispatchQueue.main.async {
                        withAnimation {
                            homeVM.selectTab = 4
                        }
                    }
                }
                
//                Button {
//                    
//                } label: {
//                    VStack{
//                        Image(systemName: "heart.circle")
//                            .renderingMode(.original)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:30, height:30)
//                        
//                        Text("Favourite")
//                            .font(.customfont(.semibold, fontSize: 14))
//                    }
//                }
//                .foregroundColor(homeVM.selectTab == 1 ? .primaryApp : .primaryText)
//                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
//                Button {
//                    
//                } label: {
//                    VStack{
//                        Image(systemName: "list.bullet")
//                            .renderingMode(.original)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:30, height:30)
//                        
//                        Text("Your Order")
//                            .font(.customfont(.semibold, fontSize: 14))
//                    }
//                }
//                .foregroundColor(homeVM.selectTab == 2 ? .primaryApp : .primaryText)
//                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
//                TabButton(title: "Your Order", icon: "list.bullet", isSelect: homeVM.selectTab == 2) {
//                    DispatchQueue.main.sync {
//                        withAnimation {
//                            homeVM.selectTab = 2
//                        }
//                    }
//                }
//                Button {
//                    
//                } label: {
//                    VStack{
//                        Image(systemName: "person.crop.circle")
//                            .renderingMode(.original)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width:30, height:30)
//                        
//                        Text("Account")
//                            .font(.customfont(.semibold, fontSize: 14))
//                    }
//                }
//                .foregroundColor(homeVM.selectTab == 3 ? .primaryApp : .primaryText)
//                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
//                TabButton(title: "Account", icon: "person.crop.circle", isSelect: homeVM.selectTab == 3) {
//                    DispatchQueue.main.sync {
//                        withAnimation {
//                            homeVM.selectTab = 3
//                        }
//                    }
//                }

                
            }
            .padding(.top, 10)
            .padding(.horizontal,10)
            .padding(.bottom, .bottomInsets)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: -2)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainTabView()
        }
        
    }
}
