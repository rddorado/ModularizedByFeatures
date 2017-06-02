//
//  AppDelegate.swift
//  DogFeature
//
//  Created by ronaldo on 06/02/2017.
//  Copyright (c) 2017 ronaldo. All rights reserved.
//

import UIKit
import DogFeature

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let router = DogFeatureRouter()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        
        window?.rootViewController = router.getMainScreen()
        window?.makeKeyAndVisible()
        return true
    }
}

