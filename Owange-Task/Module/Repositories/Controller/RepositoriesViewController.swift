//
//  RepositoriesViewController.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import UIKit
import PromiseKit

protocol RepositoriesViewModelProtocol: class {
    func fetchRepositories() -> Promise<Void>
}
protocol RepositoriesCoordinatorProtocol: class {
    func repositoriesFetched()
}

class RepositoriesViewController: UIViewController {
    
    var viewModel: RepositoriesViewModelProtocol!
    var coordinator: RepositoriesCoordinatorProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstly {
            viewModel.fetchRepositories()
        }.done { [weak self] in
            
        }.catch { error in
            
        }.finally { [weak self] in
            
        }
    }

}
