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
    
        let repositoriesView = self.container.resolveRepositoriesController(coordinator: self)
        self.navigationController = BaseNavigationController (rootViewController: repositoriesView)
   
        UIApplication.shared.restartTo(self.navigationController!)
    }
}
extension RepositoriesCoordinator: RepositoriesCoordinatorProtocol  {
    
    func repositoriesFetched() {
    }
}
