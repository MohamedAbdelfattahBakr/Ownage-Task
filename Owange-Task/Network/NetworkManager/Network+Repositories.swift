//
//  Network+Repositories.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import PromiseKit

extension NetworkManager: RepositoriesServiceProtocol {
    func fetchRepositories() -> Promise<RepositoriesResponse> {
        return self.repositoriesProvider.requestPromise(RepositoriesAPI.fetchRepositories)
    }
}
