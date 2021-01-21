//
//  Person.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

struct User: Decodable {
    let id: Int
    let name: String
}

struct Album: Decodable {
    let userId: Int
    let id: Int
}

struct Photo: Decodable {
    let albumId: Int
    let title: String
}
