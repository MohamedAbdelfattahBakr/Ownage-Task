//
//  RepositoriesCoordinator.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit

class RepositoriesCoordinator: BaseCoordinator<RepositoriesFactory> {
    
    override func start() {
        self.container = RepositoriesFactory()
    
    }
}
