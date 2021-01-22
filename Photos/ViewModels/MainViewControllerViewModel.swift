//
//  MainViewControllerViewModel.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class MainViewControllerViewModel: MainViewControllerViewModelType {
    
    private var users: [User]?
    var selectedIndexPath: IndexPath?
    var dataFetcherService = DataFetcherService()
    
    init() {
        dataFetcherService.fetchUsers { (users) in
            self.users = users
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reload"), object: nil)
        }
    }
    
    func numberOfRows() -> Int {
        guard let users = users else { return 0 }
        return users.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> UserCellViewModelType? {
        guard let users = users else { return nil }
        let user = users[indexPath.row]
        return UserCellViewModel(user: user)
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
         self.selectedIndexPath = indexPath
    }
    
    func detailVCViewModel(forIndexPath indexPath: IndexPath) -> DetailViewControllerViewModelType? {
        guard let users = users else { return nil }
        let user = users[indexPath.row]
        return DetailViewControllerViewModel(user: user)
    }
}

