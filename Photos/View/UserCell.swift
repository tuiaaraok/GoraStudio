//
//  TableViewCell.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    weak var viewModel: UserCellViewModelType? {
        willSet(viewModel) {
            textLabel?.text = viewModel?.user.name
//            activityIndicator.startAnimating()
//            activityIndicator.hidesWhenStopped = true
//            nameLabel.text = viewModel?.team.team.name
//            locationLabel.text = viewModel?.team.team.location ?? ""
//            conferenceLabel.text = viewModel?.team.team.conference ?? ""
//               
//            guard let imageUrl = viewModel?.team.team.image else { return }
//               
//            DataFetcher.shared.fetchImage(imageString: imageUrl) { (data) in
//                DispatchQueue.main.async {
//                    self.imageTeam.image = UIImage(data: data)
//                    self.activityIndicator.stopAnimating()
//                }
//            }
        }
    }

}
