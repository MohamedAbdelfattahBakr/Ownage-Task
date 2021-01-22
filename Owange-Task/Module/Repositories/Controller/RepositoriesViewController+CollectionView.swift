//
//  RepositoriesViewController+CollectionView.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 23.01.2021.
//

import UIKit

extension RepositoriesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.getRepositoriesCount()
    }
}

extension RepositoriesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(cellClass: RepositoriesCell.self, for: indexPath)
//        let file = viewModel.getRepositories().filter({ ($0.fork ?? true) })
        
        return cell
    }
}

