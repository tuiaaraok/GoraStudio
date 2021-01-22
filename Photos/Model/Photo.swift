//
//  Photo.swift
//  Photos
//
//  Created by Айсен Шишигин on 22/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

struct Photo: Decodable {
    let albumId: Int
    let title: String
    let url: String
}
