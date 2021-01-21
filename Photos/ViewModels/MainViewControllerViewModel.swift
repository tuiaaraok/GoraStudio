//
//  MainViewControllerViewModel.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class MainViewControllerViewModel: MainViewControllerViewModelType {
    
    var urlString = "https://jsonplaceholder.typicode.com/users"
    var selectedIndexPath: IndexPath?
    var users: [User]?
    
    func getData() {
        DataFetcher.shared.fetchData(url: urlString, completion: fetch(users:))
    }
    private func fetch(users: [User]) {
        DispatchQueue.main.async {
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
        print(user.name)
        return UserCellViewModel(user: user)
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
         self.selectedIndexPath = indexPath
    }
}

