//
//  TableViewCell.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    weak var viewModel: UserCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            textLabel?.text = viewModel.user.name
        }
    }
}
