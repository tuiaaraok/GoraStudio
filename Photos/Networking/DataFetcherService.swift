//
//  DataFetcherService.swift
//  Photos
//
//  Created by Айсен Шишигин on 22/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class DataFetcherService {
    
    func fetchUsers(completion: @escaping ([User]) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/users"
        DataFetcher.shared.fetchData(url: urlString, completion: completion)
    }
    
    func fetchAlbums(completion: @escaping ([Album]) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/albums"
        DataFetcher.shared.fetchData(url: urlString, completion: completion)
    }
    
    func fetchPhotos(completion: @escaping ([Photo]) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/photos"
        DataFetcher.shared.fetchData(url: urlString, completion: completion)
    }
}
