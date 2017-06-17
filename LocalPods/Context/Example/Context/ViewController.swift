//
//  ViewController.swift
//  Context
//
//  Created by ronaldo on 06/01/2017.
//  Copyright (c) 2017 ronaldo. All rights reserved.
//

import UIKit
import Context

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Test Objc service
        ContextFactory().objcService().publicObjcServiceSample()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

