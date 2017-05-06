//
//  AppDelegate.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import UIKit
import Firebase
// MARK: - AppDelegate: UIResponder, UIApplicationDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: Properties
    
    var window: UIWindow?

    // MARK: UIApplicationDelegate
    func isUnitTesting() -> Bool {
        return ProcessInfo.processInfo.environment["TEST"] != nil
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        BuddyBuildSDK.setup()
        
        if !isUnitTesting() {
            FIRApp.configure()
        }
        // Override point for customization after application launch.
        return true
    }
}
