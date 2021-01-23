//
//  RepositoriesViewController+CollectionView.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 23.01.2021.
//

import UIKit
import Kingfisher

extension RepositoriesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.getRepositoriesCount()
    }
}

extension RepositoriesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(cellClass: RepositoriesCell.self, for: indexPath)
        let repositories = viewModel.getRepositoriesOfIndex(index: indexPath.row)
        cell.nameTextLabel.text = repositories?.name
        cell.detailsTextLabel.text = repositories?.description
        cell.forkCountTextLabel.text =  "\(String(repositories?.forks_count ?? 0))  Fork Count"
        if repositories?.fork == true {
            cell.forkedView.backgroundColor = .green
            cell.forkedTextLabel.text = "forked"
        } else {
            cell.forkedView.backgroundColor = .black
            cell.forkedTextLabel.text = "un forked"
        }
        let imageUrl = repositories?.owner?.avatar_url
        let url = URL(string: imageUrl!)
        cell.avatarImageView.kf.setImage(with: url)
        return cell
    }
}

