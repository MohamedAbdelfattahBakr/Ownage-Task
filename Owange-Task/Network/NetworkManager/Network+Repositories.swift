//
//  Network+Repositories.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import PromiseKit

extension NetworkManager: RepositoriesServiceProtocol {
    
    func fetchRepositories() -> Promise<Repositories> {
        return self.repositoriesProvider.requestPromise(RepositoriesAPI.fetchRepositories)
    }
}
