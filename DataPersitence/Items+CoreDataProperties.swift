//
//  Items+CoreDataProperties.swift
//  DataPersitence
//
//  Created by kartikey on 16/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import CoreData


extension Items {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Items> {
        return NSFetchRequest<Items>(entityName: "Items");
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var title: String?
    @NSManaged public var toImage: Images?
    @NSManaged public var toItemType: ItemTypes?
    @NSManaged public var toStore: NSSet?

}

// MARK: Generated accessors for toStore
extension Items {

    @objc(addToStoreObject:)
    @NSManaged public func addToToStore(_ value: Stores)

    @objc(removeToStoreObject:)
    @NSManaged public func removeFromToStore(_ value: Stores)

    @objc(addToStore:)
    @NSManaged public func addToToStore(_ values: NSSet)

    @objc(removeToStore:)
    @NSManaged public func removeFromToStore(_ values: NSSet)

}
