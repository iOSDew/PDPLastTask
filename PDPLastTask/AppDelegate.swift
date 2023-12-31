//
//  AppDelegate.swift
//  PDPLastTask
//
//  Created by Khojimurod Sultonov on 31.12.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initVC()
        return true
    }
    //MARK: - Methods
    
    func initVC(){
        window = UIWindow()
        let vc = CollectionVC(nibName: "CollectionVC", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
    }
}

