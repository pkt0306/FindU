//
//  ProductsModel.swift
//  PKT_FindU
//
//  Created by PKT on 2021/08/11.
//

import Foundation

struct ProductModel: Codable {
    var response: [Product]?
}

struct Product: Codable {
    var name: String
    var roadAddress: String
    var parcelAddress: String
    var telephoneNumber: String
    var signatureMenu: String
    var openingTime: String
    var HashTag1: String
    var HashTag2: String
    var HashTag3: String
    var HashTag4: String
    var HashTag5: String
}
