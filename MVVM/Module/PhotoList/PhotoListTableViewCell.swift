//
//  PhotoListTableViewCell.swift
//  MVVMPlayground
//
//  Created by parul vats on 12/11/2018.
//  Copyright © 2018 MaindoWorks. All rights reserved.
//

import UIKit

class PhotoListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descContainerHeightConstraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(cellViewModel: PhotoListCellViewModel) {
        self.nameLabel.text = cellViewModel.titleText
        self.descriptionLabel.text = cellViewModel.descText
        self.mainImageView?.sd_setImage(with: URL( string: cellViewModel.imageUrl ), completed: nil)
        self.dateLabel.text = cellViewModel.dateText
    }

}
