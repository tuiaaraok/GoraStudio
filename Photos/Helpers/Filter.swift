//
//  Filter.swift
//  Photos
//
//  Created by Айсен Шишигин on 22/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class Filter {
    
    static func selectUserPhotos(_ albums: [Album], _ photos: [Photo], _ user: User) -> [Photo] {
        var photosOfUser: [Photo] = []
        for album in albums {
            if album.userId == user.id {
                for photo in photos {
                    if photo.albumId == album.id {
                        photosOfUser.append(photo)
                    }
                }
            }
        }
        return photosOfUser
    }
}
