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
        }else{
            let options = FIROptions(googleAppID: "1:462250349275:ios:be6789b769064e6a",
                                     bundleID: "com.buddybuild.udacity.roman.RomanNumeralCalculator",
                                     gcmSenderID: "462250349275",
                                     apiKey: "AIzaSyBeuPlvrVC11sEFNzWU5LYoA1k1XYf_auk",
                                     clientID: "462250349275-o626o6r6of9q9g9oddtcjmf8q836f4ad.apps.googleusercontent.com",
                                     trackingID: "",
                                     androidClientID: "",
                                     databaseURL: "https://workcatalog-24c83.firebaseio.com",
                                     storageBucket: "workcatalog-24c83.appspot.com",
                                     deepLinkURLScheme: "")
            FIRApp.configure(with: options!)
        }
        // Override point for customization after application launch.
        return true
    }
}
