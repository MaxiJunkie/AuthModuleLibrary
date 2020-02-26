//
//  AppDelegate.swift
//  AuthModule
//
//  Created by MaxiJunkie on 02/24/2020.
//  Copyright (c) 2020 MaxiJunkie. All rights reserved.
//

import UIKit
import AuthModule

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = AuthModuleAssembly.assembleModule(output: self)
        window?.makeKeyAndVisible()
        
        return true
    }
}

// MARK: - AuthModuleOutput

extension AppDelegate: AuthModuleOutput {
  
    func showPinModule() {
        
    }
    
    func showNextModule() {
        
    }
}
