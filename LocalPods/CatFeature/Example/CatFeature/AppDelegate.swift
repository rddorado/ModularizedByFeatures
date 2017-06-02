//
//  AppDelegate.swift
//  CatFeature
//
//  Created by ronaldo on 06/03/2017.
//  Copyright (c) 2017 ronaldo. All rights reserved.
//

import UIKit
import CatFeature

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let router = CatFeatureRouter()
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        window?.rootViewController = router.getMainScreen()
        window?.makeKeyAndVisible()
        return true
    }
}

