//
//  RepositoriesViewModel.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import PromiseKit

class RepositoriesViewModel: NSObject {
    var apiCLient: RepositoriesServiceProtocol!
    private var listOfRepositories: [RepositoriesResponse] = []

}
extension RepositoriesViewModel: RepositoriesViewModelProtocol {
    
    func fetchRepositories() -> Promise<Void> {
        
        return Promise<Void> { seal in
            firstly {
                self.apiCLient.fetchRepositories()
            }.done { [weak self ] (response) in
                self?.listOfRepositories = response
                seal.fulfill_()
            }.catch { error in
                seal.reject(error)
            }
        }
    }
    
    func getRepositoriesCount () -> Int {
        return listOfRepositories.count
    }
    func getRepositoriesOfIndex (index: Int) -> RepositoriesResponse? {
        if index < listOfRepositories.count {
            return listOfRepositories[index];
        }
        return nil
    }
}
