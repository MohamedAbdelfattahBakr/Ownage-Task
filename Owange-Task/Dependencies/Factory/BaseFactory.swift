//
//  BaseFactory.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Foundation

class BaseFactory: DependencyFactory {
    
    func resolveRepositoriesCoordinator() -> RepositoriesCoordinator {
        return unshared { () -> RepositoriesCoordinator in
            return RepositoriesCoordinator()
        }
    }
}
