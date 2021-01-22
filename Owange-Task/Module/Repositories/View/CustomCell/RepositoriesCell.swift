//
//  RepositoriesCell.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 23.01.2021.
//

import UIKit

class RepositoriesCell: UICollectionViewCell {
    
    
    @IBOutlet weak var widthConstant: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let screenWidth = UIScreen.main.bounds.size.width
        widthConstant.constant = screenWidth - (2 * 12)
    }
    override init(frame: CGRect) {
        super.init(frame: frame); common() }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder); common() }
    
    private func common() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.leftAnchor.constraint(equalTo: leftAnchor),
            contentView.rightAnchor.constraint(equalTo: rightAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
