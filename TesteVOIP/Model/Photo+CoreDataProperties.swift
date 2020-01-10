//
//  Photo+CoreDataProperties.swift
//  TesteVOIP
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 09/01/20.
//  Copyright © 2020 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var url: String?
    @NSManaged public var thumbNail: String?
    @NSManaged public var title: String?

}
