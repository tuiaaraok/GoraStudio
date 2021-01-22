//
//  DetailViewControllerViewModelType.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

protocol DetailViewControllerViewModelType {
    var user: User? { get }
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> DetailCollectionViewCellViewModelType?
}
