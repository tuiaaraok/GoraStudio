//
//  DetailViewControllerViewModel.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class DetailViewControllerViewModel: DetailViewControllerViewModelType {
    
    private var photos: [Photo]?
    private var albums: [Album]?
    private var photosOfUser: [Photo] = []
    var user: User?
    var dataFetcherService = DataFetcherService()
    
    init(user: User) {
        self.user = user
       
        dataFetcherService.fetchAlbums { (albums) in
            self.albums = albums
        }
        
        dataFetcherService.fetchPhotos { (photos) in
            self.photos = photos
            self.getPhotosOfUser()
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reloadCollectionView"), object: nil)
        }
    }
    
    private func getPhotosOfUser() {
        DispatchQueue.main.async {
            guard let albums = self.albums, let photos = self.photos, let user = self.user else { return  }
            self.photosOfUser = Filter.selectPhotosOfUser(albums, photos, user)
        }
    }
    
    func numberOfRows() -> Int {
        return photosOfUser.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> DetailCollectionViewCellViewModelType? {
        let photoOfUser = photosOfUser[indexPath.row]
        return DetailCollectionViewCellViewModel(photo: photoOfUser)
    }
}
