//
//  BaseCoordinator.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit

protocol Coordinator: class {
    func start()
    func didChangeLangauege()

}
extension Coordinator {
    func didChangeLangauege () {
        self.start()
    }
}
class BaseCoordinator <T: BaseFactory>: Coordinator {
    
    var container: T!
    var navigationController: UINavigationController?
    func start() {
        fatalError("must be implemented in subclass")
    }
}
