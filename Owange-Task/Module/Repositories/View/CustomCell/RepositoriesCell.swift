//
//  RepositoriesCell.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 23.01.2021.
//

import UIKit
import SkeletonView

class RepositoriesCell: UICollectionViewCell {
    
    @IBOutlet weak var widthConstant: NSLayoutConstraint!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var detailsTextLabel: UILabel!
    @IBOutlet weak var forkCountTextLabel: UILabel!
    @IBOutlet weak var forkedTextLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var forkedView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.nameTextLabel.showAnimatedSkeleton()
        self.detailsTextLabel.showAnimatedSkeleton()
        self.forkCountTextLabel.showAnimatedSkeleton()
        self.avatarImageView.showAnimatedSkeleton()
        self.forkedView.showAnimatedSkeleton()
        self.forkedTextLabel.showAnimatedSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.nameTextLabel.hideSkeleton()
            self.detailsTextLabel.hideSkeleton()
            self.forkCountTextLabel.hideSkeleton()
            self.avatarImageView.hideSkeleton()
            self.forkedView.hideSkeleton()
            self.forkedTextLabel.hideSkeleton()
        }
    
        let screenWidth = UIScreen.main.bounds.size.width
        widthConstant.constant = screenWidth - (3 * 12)
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
