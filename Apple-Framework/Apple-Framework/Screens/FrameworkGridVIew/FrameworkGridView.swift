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
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
            .navigationDestination(for: Framework.self) {
                framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
//        .preferredColorScheme(.light)
        .preferredColorScheme(.dark)
}


