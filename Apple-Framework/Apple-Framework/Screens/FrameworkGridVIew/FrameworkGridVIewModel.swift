//
//  FrameworkGridVIewModel.swift
//  Apple-Framework
//
//  Created by tuan anh on 12/3/24.
//

import SwiftUI

final class FrameworkGridVIewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
