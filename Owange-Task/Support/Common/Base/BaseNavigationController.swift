//
//  BaseNavigationController.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit

class BaseNavigationController: UINavigationController, UINavigationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    func navigationController(_: UINavigationController, willShow viewController: UIViewController, animated _: Bool) {

    }

    @objc func back() {
        popViewController(animated: true)
    }
}
