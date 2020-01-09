//
//  PhotosRequest.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import Foundation

enum PhotosError: Error{
    case noDataAvilable
    case canNotProcessData
}

struct PhotosRequest {
    let resourceURL: URL
    
    init(photos: [PhotosInfo]){
        let resourceString = "https://jsonplaceholder.typicode.com/photos"
        
        guard let resourceURL = URL(string: resourceString) else{fatalError()}
        
        self.resourceURL = resourceURL
        
}
    func getPhotos(completion: @escaping(Result<[PhotosInfo], PhotosError>) -> Void){
        let dataTask = URLSession.shared.dataTask(with: resourceURL){data, _, _ in
            guard let jsonData = data else {
                completion(.failure(.noDataAvilable))
                return
            }
            do{
                let decoder = JSONDecoder()
                let photosResponse = try decoder.decode(PhotosResponse.self, from: jsonData)
                let photoDetails = photosResponse.response.photos
                completion(.success(photoDetails))
                
            }catch{
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}

