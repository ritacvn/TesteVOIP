//
//  Photo.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 08/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import Foundation

struct PhotosResponse: Decodable {
    var response: Photos
}

struct Photos: Decodable {
    var photos:[PhotosInfo]
}

struct PhotosInfo: Decodable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbNail: URL
}
