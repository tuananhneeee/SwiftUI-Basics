//
//  UIKitExtension.swift
//  OnlineShop
//
//  Created by tuan anh on 15/4/24.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    func stringDateToDate(format : String = "yyyy-MM-đd'T'HH:mm:ss.SSSZ") -> Date? {
        
        let dataFormat = DateFormatter()
        dataFormat.dateFormat = format
        return dataFormat.date(from: self)
    }
    
    func stringDataChangeFormat(format: String, newFormat:String) -> String {
        let dataFormat = DateFormatter()
        dataFormat.dateFormat = format
        if let dt = dataFormat.date(from: self) {
            dataFormat.dateFormat = newFormat
            return dataFormat.string(from: dt)
        } else{
            return ""
        }
    }
}


extension Date {
    func displayDate(format: String, addMintime: Int = 0) -> String {
        let dataFormat = DateFormatter()
        dataFormat.dateFormat = format
        let date = self.addingTimeInterval(TimeInterval(60 * addMintime))
        return dataFormat.string(from: date)
    }
}
