//
//  UIApplication.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit

extension UIApplication {
    
    var topViewController: UIViewController? {
        
        let window = (self.delegate as? AppDelegate)?.window
        let rootNaviationController = window?.rootViewController as? UINavigationController
        return rootNaviationController?.topViewController ?? window?.rootViewController
    }
    
    var window: UIWindow? {
        return (self.delegate as? AppDelegate)?.window
    }
    
    func restartTo(_ viewController: UIViewController) {
        
        if let window = self.window {
            window.rootViewController = viewController
        }
    }
}
