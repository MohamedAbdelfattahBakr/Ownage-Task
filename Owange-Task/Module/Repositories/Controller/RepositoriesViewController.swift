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
    func getRepositoriesCount() -> Int
    func getRepositoriesOfIndex (index: Int) -> RepositoriesResponse?

}
protocol RepositoriesCoordinatorProtocol: class {
    func repositoriesFetched()
}

class RepositoriesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: RepositoriesViewModelProtocol!
    var coordinator: RepositoriesCoordinatorProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        firstly {
            viewModel.fetchRepositories()
        }.done { [weak self] in
            self?.collectionView.reloadData()
            self?.coordinator.repositoriesFetched()
        }.catch { error in
            
        }.finally { [weak self] in
            self?.view.stopSkeletonAnimation()
        }
    }
    private func setup() {
        setupUI()
        collectionView.automaticallyAdjustsScrollIndicatorInsets = false
    }
    private func setupUI() {
        self.title = "Repositories List"
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerNibFor(cellClass: RepositoriesCell.self)
        collectionView.registerClassFor(cellClass: UICollectionViewCell.self)
    }
}
