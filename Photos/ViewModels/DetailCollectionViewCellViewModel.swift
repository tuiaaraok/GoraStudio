//
//  DetailCollectionViewCellViewModel.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class DetailCollectionViewCellViewModel: DetailCollectionViewCellViewModelType {
    var photo: Photo
    
    init(photo: Photo) {
        self.photo = photo
    }
}
