//
//  AppDelegate.swift
//  VistorProjectTuor
//
//  Created by Ndoo H on 31/01/2019.
//  Copyright © 2019 Ndoo H. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    // instantiate the CoreDataStack
    lazy var coreDataStack = CoreDataStack(modelName: "Virtual Tourist App")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        guard let navController = window?.rootViewController as? UINavigationController, let viewController = navController.topViewController as? MapViewController else { return true }
        
        // pass the Core Data context to the first viewController
        viewController.managedContext = coreDataStack.managedContext
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        coreDataStack.saveContext()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        coreDataStack.saveContext()
    }

}

