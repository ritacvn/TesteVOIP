//
//  Photo.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import Foundation

struct PhotosInfo: Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: URL
    var thumbNailURL: URL
    
    enum CodingKeys: String, CodingKey {
        case albumId = "albumId"
        case id, title, url
        case thumbNailURL = "thumbnailUrl"
    }
}
