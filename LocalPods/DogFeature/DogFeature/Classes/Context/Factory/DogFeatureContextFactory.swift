//
//  DogFeatureContextFactory.swift
//  DogFeature
//
//  Created by Ronaldo II Dorado on 28/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import Foundation
import Context

public protocol DogsListServiceProtocol {
    func getDogsList() -> [String]
}

public protocol DogDetailServiceProtocol {
    func getDogDetail(name: String) -> String
}

public protocol DogFeatureContextProtocol {
    func dogsListService() -> DogsListServiceProtocol
    func dogDetailService() -> DogDetailServiceProtocol
}

public class DogFeatureContextFactory: ContextFactory, DogFeatureContextProtocol {
    public override init() {
        super.init()
    }
    
    public func dogsListService() -> DogsListServiceProtocol {
        return DogsListService()
    }
    
    public func dogDetailService() -> DogDetailServiceProtocol {
        return DogDetailService()
    }
}
