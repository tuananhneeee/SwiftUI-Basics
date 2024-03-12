//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by tuan anh on 11/3/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridVIewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView , content: {
                FrameworkDetailView(framework:viewModel.selectedFramework!, 
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
//        .preferredColorScheme(.light)
        .preferredColorScheme(.dark)
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
