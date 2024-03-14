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
            
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination:
                                    FrameworkDetailView(framework: framework,
                                                        isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
//        .preferredColorScheme(.light)
        .preferredColorScheme(.dark)
}


