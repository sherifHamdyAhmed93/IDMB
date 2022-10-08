//
//  AppDelegate.swift
//  movieTrending
//
//  Created by Sherif Hamdy on 17/09/2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navController = UINavigationController(rootViewController: MainViewController())
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        self.window = window
        
        
        return true
    }

}

