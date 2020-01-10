//
//  PhotosRequest.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import Foundation
import Just

enum PhotosError: Error{
    case noDataAvilable
    case canNotProcessData
}

struct PhotosRequest {
    let resourceURL: URL
    
    init(){
        let resourceString = "https://jsonplaceholder.typicode.com/photos"
        
        guard let resourceURL = URL(string: resourceString) else{fatalError()}
        
        self.resourceURL = resourceURL
        
    }
    func getPhotos(completion: @escaping(Result<[PhotosInfo], PhotosError>) -> Void){
        let url = "https://jsonplaceholder.typicode.com/photos"
        Just.get(url){ (result) in
            guard let data = result.content else {return}
            do{
                let decoder = JSONDecoder()
                let photosResponse: [PhotosInfo] = try decoder.decode([PhotosInfo].self, from: data)
                let photoDetails = photosResponse
                completion(.success(photoDetails))
                
            }catch{
                completion(.failure(.canNotProcessData))
            }
        }
    }
}

