//
//  CatFeatureService.swift
//  CatFeature
//
//  Created by Ronaldo II Dorado on 28/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import Foundation

class CatsListService: CatsListServiceProtocol {
    func getCatsList() -> [String] {
        return ["cats1","cats2","cats3","cats4", "cats5"]
    }
}

class CatDetailService: CatDetailServiceProtocol {
    func getCatDetail(name: String) -> String {
        return "\(name)'s Detail"
    }
}
