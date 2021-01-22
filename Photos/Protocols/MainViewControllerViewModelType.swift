//
//  MainViewControllerViewModelType.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

protocol MainViewControllerViewModelType {
    var selectedIndexPath: IndexPath? { get }
    func numberOfRows() -> Int
    func selectRow(atIndexPath indexPath: IndexPath)
    func cellViewModel(forIndexPath indexPath: IndexPath) -> UserCellViewModelType?
    func detailVCViewModel(forIndexPath indexPath: IndexPath) -> DetailViewControllerViewModelType?
}
