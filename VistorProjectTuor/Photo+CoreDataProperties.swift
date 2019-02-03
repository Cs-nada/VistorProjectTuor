//
//  Photo+CoreDataProperties.swift
//  VistorProjectTuor
//
//  Created by Ndoo H on 03/02/2019.
//  Copyright © 2019 Ndoo H. All rights reserved.
//

import Foundation
import CoreData

extension Photo {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }
    
    @NSManaged public var id: String?
    @NSManaged public var imageURL: String?
    @NSManaged public var title: String?
    @NSManaged public var image: Data?
    @NSManaged public var pin: Pin?
    
}
