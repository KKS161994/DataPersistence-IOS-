//
//  Images+CoreDataProperties.swift
//  DataPersitence
//
//  Created by kartikey on 16/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import CoreData


extension Images {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Images> {
        return NSFetchRequest<Images>(entityName: "Images");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: Items?
    @NSManaged public var toStore: NSSet?

}

// MARK: Generated accessors for toStore
extension Images {

    @objc(addToStoreObject:)
    @NSManaged public func addToToStore(_ value: Stores)

    @objc(removeToStoreObject:)
    @NSManaged public func removeFromToStore(_ value: Stores)

    @objc(addToStore:)
    @NSManaged public func addToToStore(_ values: NSSet)

    @objc(removeToStore:)
    @NSManaged public func removeFromToStore(_ values: NSSet)

}
