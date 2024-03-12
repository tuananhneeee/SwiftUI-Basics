//
//  FrameworkGridVIewModel.swift
//  Apple-Framework
//
//  Created by tuan anh on 12/3/24.
//

import SwiftUI

final class FrameworkGridVIewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
