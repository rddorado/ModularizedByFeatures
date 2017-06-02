//
//  DogFeatureService.swift
//  DogFeature
//
//  Created by Ronaldo II Dorado on 28/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import Foundation

class DogsListService: DogsListServiceProtocol {
    func getDogsList() -> [String] {
        return ["dogs1","dogs2","dogs3","dogs4"]
    }
}

class DogDetailService: DogDetailServiceProtocol {
    func getDogDetail(name: String) -> String {
        return "\(name)'s Detail"
    }
}
