//
//  DataFetcher.swift
//  Photos
//
//  Created by Айсен Шишигин on 21/01/2021.
//  Copyright © 2021 Туйаара Оконешникова. All rights reserved.
//

import Foundation

class DataFetcher {
    
    static var shared = DataFetcher()
       
    func fetchData<T: Decodable>(url: String, completion: @escaping ([T]) -> ()) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                let dataArray = try JSONDecoder().decode([T].self, from: data)
                DispatchQueue.main.async {
                    completion(dataArray)
                }
            }
            catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
