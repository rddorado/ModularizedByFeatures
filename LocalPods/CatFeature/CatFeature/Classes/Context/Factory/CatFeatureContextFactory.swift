//
//  CatFeatureContextFactory.swift
//  CatFeature
//
//  Created by Ronaldo II Dorado on 28/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import Foundation
import Context

public protocol CatsListServiceProtocol {
    func getCatsList() -> [String]
}

public protocol CatDetailServiceProtocol {
    func getCatDetail(name: String) -> String
}

public protocol CatFeatureContextProtocol {
    func catsListService() -> CatsListServiceProtocol
    func catDetailService() -> CatDetailServiceProtocol
}

open class CatFeatureContextFactory: ContextFactory, CatFeatureContextProtocol {
    public override init() {
        super.init()
    }

    public func catsListService() -> CatsListServiceProtocol {
        return CatsListService()
    }
    
    public func catDetailService() -> CatDetailServiceProtocol {
        return CatDetailService()
    }
}
