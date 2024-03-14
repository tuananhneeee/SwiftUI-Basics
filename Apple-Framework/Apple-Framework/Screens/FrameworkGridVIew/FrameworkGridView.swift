//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by tuan anh on 11/3/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridVIewModel()
    
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
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


