//
//  RestaurantModel.swift
//  PKT_FindU_2.0
//
//  Created by PKT on 2021/08/22.
//

import Foundation

// 하나의 식당정보를 담아둘 모델
struct RestaurantInfo: Codable {
    let response: [Product]?
}

struct Product: Codable {
    let categori: String
    let products: [ProductDetail]?
}

struct ProductDetail: Codable {
    let name: String
    let roadAddress: String
    let parcelAddress: String
    let telephoneNumber: String
    let signatureMenu: String
    let openingTime: String
    let HashTag: [HashTags]?
}

struct HashTags: Codable {
    let HashTag1: String
    let HashTag2: String
    let HashTag3: String
    let HashTag4: String
    let HashTag5: String
}

// 모델 테스트
struct RestaurantInfo_test: Codable {
    let testName: String
}

class RestaurantModel {
    var restaurants: [RestaurantInfo_test] = [RestaurantInfo_test(testName: "포에틱시너리")]
    
    // 식당정보 저장
    func dosave() {
        let encoder = JSONEncoder()
        
        guard let result = try? encoder.encode(restaurants) else {
            assertionFailure("인코딩 실패")
            return
        }
        let homePath = NSHomeDirectory()
        var url = URL(fileURLWithPath: homePath)
        
        url.appendPathComponent("Documents/Restaurant.json")
        
        _ = try! result.write(to: url)
    }
    
    // 식당정보 가져오기
    func doRead() {
        let homePath = NSHomeDirectory()
        var url = URL(fileURLWithPath: homePath)
        
        url.appendPathComponent("Documents/Restaurant.json")
        
        guard let data = try? Data(contentsOf: url) else {
            // 프로젝트 번들에 있는 기본 자료를 약속된 위치 - 도큐먼트 안 - 로 이동시킨다.
            let bPath = Bundle.main.path(forResource: "Restaurant", ofType: "json")!
            
            let fm = FileManager()
            
            _ = try! fm.copyItem(at: URL(fileURLWithPath: bPath),
                                 to: url)
            
            self.doRead()
            return
        }
        let result = try! JSONDecoder().decode([RestaurantInfo_test].self, from: data)
        
        print(result)
        
        restaurants = result
    }
}
