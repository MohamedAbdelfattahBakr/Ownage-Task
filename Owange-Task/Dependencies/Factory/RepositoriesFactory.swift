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
