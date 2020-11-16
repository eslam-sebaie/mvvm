//
//  ApiCoordinator.swift
//  MVVMDemo
//
//  Created by Eslam Sebaie on 11/16/20.
//

import UIKit
class AppCoordinator {
    var window: UIWindow?
    
    init(window:UIWindow) {
        self.window = window
        window.makeKeyAndVisible()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "MvvmVC") as? MvvmVC
        self.window?.rootViewController = mainVC
    }
    
    func start() -> Void{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(withIdentifier: "MvvmVC") as? MvvmVC
        self.window?.rootViewController = mainVC
    }
}
