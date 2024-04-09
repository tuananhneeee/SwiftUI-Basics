//
//  CountryPickerUI.swift
//  OnlineShop
//
//  Created by tuan anh on 8/4/24.
//

import SwiftUI
import CountryPicker

struct CountryPickerUI: UIViewControllerRepresentable {
    
    @Binding var country: Country?
    
    class Coordinator: NSObject, CountryPickerDelegate{
        var parent: CountryPickerUI
        
        init(_ parents: CountryPickerUI) {
            self.parent = parents
        }
        
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
    }
    
    
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        
        let countryPicker = CountryPickerViewController()
        countryPicker.selectedCountry = "VN"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    	
}
