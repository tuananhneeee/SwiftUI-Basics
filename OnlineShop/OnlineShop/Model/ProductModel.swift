//
//  ProductModel.swift
//  OnlineShop
//
//  Created by tuan anh on 6/5/24.
//

import SwiftUI

struct ProductModel: Identifiable, Equatable {
    
    
    var id: Int = 0
    var proId: Int = 0
    var catId: Int = 0
    var brandId: Int = 0
    var typeId: Int = 0

    var detail: String = ""
    var name: String = ""
    var unitName: String = ""

    var unitValue: String = ""
    var nutritionWeight: String = ""
    var image: String = ""
    var catName: String = ""
    var typeName: String = ""
    var isFav: Bool = false
    var offerPrice: Double?
    var price: Double = 0.0
    var startDate: Date = Date()
    var enđDate: Date = Date()

    
    init(dict: NSDictionary) {
        self.id = dict.value(forKey: "pro_id") as? Int ?? 0
        self.proId = dict.value(forKey: "pro_id") as? Int ?? 0
        self.catId = dict.value(forKey: "cat_id") as? Int ?? 0
        self.brandId = dict.value(forKey: "brand_id") as? Int ?? 0
        self.typeId = dict.value(forKey: "type_id") as? Int ?? 0
        self.isFav = dict.value(forKey: "is_fav") as? Int ?? 0 == 1


        self.detail = dict.value(forKey: "detail") as? String ?? ""
        self.name = dict.value(forKey: "name") as? String ?? ""
        self.unitName = dict.value(forKey: "unit_name") as? String ?? ""

        self.unitValue = dict.value(forKey: "unit_value") as? String ?? ""
        self.nutritionWeight = dict.value(forKey: "nutrition_weight") as? String ?? ""
        self.image = dict.value(forKey: "image") as? String ?? ""
        self.catName = dict.value(forKey: "image") as? String ?? ""
        self.typeName = dict.value(forKey: "image") as? String ?? ""

        self.offerPrice = dict.value(forKey: "offer_price") as? Double
        self.price = dict.value(forKey: "price") as? Double ?? 0

        self.startDate = (dict.value(forKey: "start_date") as? String ?? "").stringDateToDate() ?? Date()
        self.enđDate = (dict.value(forKey: "offer_price") as? String ?? "").stringDateToDate() ?? Date()

    }
    
    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}

