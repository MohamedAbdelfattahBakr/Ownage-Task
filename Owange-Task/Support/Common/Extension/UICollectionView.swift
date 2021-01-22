//
//  UICollectionView.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 23.01.2021.
//

import UIKit

extension UICollectionView {
    
    func registerNibFor(cellClass: UICollectionViewCell.Type) {
        self.register(UINib(nibName: cellClass.cellNibName, bundle: nil),
                      forCellWithReuseIdentifier: cellClass.cellIdentifier)
    }
    
    func registerClassFor(cellClass: UICollectionViewCell.Type) {
        self.register(cellClass, forCellWithReuseIdentifier: cellClass.cellIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(cellClass: T.Type, for indexPath: IndexPath) -> T {
        
        guard let cell: T = self.dequeueReusableCell(withReuseIdentifier: cellClass.cellIdentifier,
                                                     for: indexPath) as? T else {
                                                        fatalError("no \(cellClass.cellIdentifier) registered")
        }
        return cell
    }
    
    func reloadData(_ completion: (() -> Void)? = nil) {
        reloadData()
        guard let completion = completion else { return }
        layoutIfNeeded()
        completion()
    }
}

extension UICollectionViewCell {
    
    static var cellIdentifier: String {
        return NSStringFromClass(Self.self)
    }
    
    static var cellNibName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last ?? ""
    }
}
