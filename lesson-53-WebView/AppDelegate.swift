//
//  AppDelegate.swift
//  lesson-53-WebView
//
//  Created by JAHONGIR on 19/07/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        
        let vc = MainVC(nibName: "MainVC", bundle: nil)
        let nav = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = nav
        
        return true
    }

    
}

