//
//  DetailCollectionViewCell.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import UIKit

class DetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak private var userImage: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var container: UIView!
    
    var imageDataFetcher = ImageDataFetcher()
    
    weak var viewModel: DetailCollectionViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            self.titleLabel.text = viewModel.photo.title
            activityIndicator.startAnimating()
            activityIndicator.hidesWhenStopped = true
  
            let imageUrl = viewModel.photo.url
            imageDataFetcher.fetchImage(imageString: imageUrl) { (data) in
                DispatchQueue.main.async {
                    self.userImage.image = UIImage(data: data)
                    self.activityIndicator.stopAnimating()
                }
            }
        }
    }
}
