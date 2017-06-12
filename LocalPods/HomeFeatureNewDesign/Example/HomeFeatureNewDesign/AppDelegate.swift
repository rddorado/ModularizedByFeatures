//
//  AppDelegate.swift
//  HomeFeatureNewDesign
//
//  Created by ronaldo on 06/12/2017.
//  Copyright (c) 2017 ronaldo. All rights reserved.
//

import UIKit
import HomeFeatureNewDesign

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var router: HomeFeatureRouter?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
        [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        router = HomeFeatureRouter(delegate:self)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        window?.rootViewController = router?.getMainScreen()
        window?.makeKeyAndVisible()
        return true
    }
    
    
}

extension AppDelegate:  HomeFeatureRouterDelegate{
    func showDogsList() {
        print("Show Dogs List")
    }
    
    func showCatsList() {
        print("Show Cats List")
    }
}

