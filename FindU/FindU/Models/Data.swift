//
//  Data.swift
//  PKT_FindU
//
//  Created by PKT on 2021/08/11.
//

import Foundation

class Data {
    var main: String
    var detail: detailtype
    
    init(main: String, detail: detailtype) {
        self.main = main
        self.detail = detail
    }
}

enum detailtype: String {
    case A = "A"
    case B = "b"
}
