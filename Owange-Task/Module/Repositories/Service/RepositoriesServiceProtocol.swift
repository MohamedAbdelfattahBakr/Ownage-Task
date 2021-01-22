//
//  RepositoriesServiceProtocol.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import PromiseKit

protocol RepositoriesServiceProtocol {
    func fetchRepositories() -> Promise<RepositoriesResponse>
}
