//
//  AppDelegate.swift
//  krysielIOS
//
//  Created by krysiel86 on 12/11/2023.
//  Copyright (c) 2023 krysiel86. All rights reserved.
//

import UIKit
import PrebidMobile

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
     
        
        // ===== INIT: Prebid
        if CommandLine.arguments.contains("-uiTesting") {
//            UIApplication.shared.getKeyWindow()?.layer.speed = 2
            UIView.setAnimationsEnabled(false)
        }
        // Set account id and custom Prebid server URL
        Prebid.shared.prebidServerAccountId = "0689a263-318d-448b-a3d4-b02e8a709d9d"
        try! Prebid.shared.setCustomPrebidServer(url: "https://prebid-server-test-j.prebid.org/openrtb2/auction")
        
//        // Initialize Prebid SDK
//        Prebid.initializeSDK(gadMobileAdsVersion: GADGetStringFromVersionNumber(GADMobileAds.sharedInstance().versionNumber)) { status, error in
//            if let error = error {
//                print("Initialization Error: \(error.localizedDescription)")
//                return
//            }
//        }
        
        // ===== CONFIGURE: Prebid
        
        Targeting.shared.sourceapp = "PrebidDemoSwift"
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

