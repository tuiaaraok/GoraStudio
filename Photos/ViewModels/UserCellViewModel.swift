//
//  UserCellViewModel.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class UserCellViewModel: UserCellViewModelType {
    var user: User
    
    init(user: User) {
        self.user = user
    }
}
