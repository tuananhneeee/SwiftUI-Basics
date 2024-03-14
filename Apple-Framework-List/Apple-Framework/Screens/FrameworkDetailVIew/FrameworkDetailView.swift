//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by tuan anh on 11/3/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
//                AFButton(title: "Learn More")
                Label("Learn more", systemImage: "book.fill")
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundColor(.white)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(false))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
