//
//  AppDelegate.swift
//  DogFeatureApp
//
//  Created by Ronaldo II Dorado on 27/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import UIKit
import DogFeature

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let mainRouter = DogFeatureRouter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
         window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController =  mainRouter.getMainScreen()
        window?.makeKeyAndVisible()
        return true
    }

    
}

