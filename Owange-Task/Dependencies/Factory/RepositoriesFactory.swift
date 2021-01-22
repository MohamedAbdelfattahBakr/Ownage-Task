//
//  RepositoriesFactory.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit

class RepositoriesFactory: BaseFactory {
    
    func resolveRepositoriesService() -> RepositoriesServiceProtocol {
        unshared {
            return NetworkManager()
        }
    }
}

//MARK: - Repositories
extension RepositoriesFactory {
    
    func resolveRepositoriesViewModel() -> RepositoriesViewModel {
        weakShared {
            return RepositoriesViewModel()
        } configure: {
            $0.apiCLient = self.resolveRepositoriesService()
        }
    }
    
    func resolveRepositoriesController(coordinator: RepositoriesCoordinatorProtocol) -> RepositoriesViewController {
        unshared {
            let storyboard = UIStoryboard(name: Constants.Storyboard.repositories, bundle: nil)
            return storyboard.instantiateViewController(identifier: Constants.StoryboardId.repositories)
        } configure: {
            $0.viewModel = self.resolveRepositoriesViewModel()
            $0.coordinator = coordinator
        }
    }
}
