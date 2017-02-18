//
//  Stores+CoreDataProperties.swift
//  DataPersitence
//
//  Created by kartikey on 16/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import CoreData


extension Stores {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stores> {
        return NSFetchRequest<Stores>(entityName: "Stores");
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: Images?
    @NSManaged public var toItem: NSSet?

}

// MARK: Generated accessors for toItem
extension Stores {

    @objc(addToItemObject:)
    @NSManaged public func addToToItem(_ value: Items)

    @objc(removeToItemObject:)
    @NSManaged public func removeFromToItem(_ value: Items)

    @objc(addToItem:)
    @NSManaged public func addToToItem(_ values: NSSet)

    @objc(removeToItem:)
    @NSManaged public func removeFromToItem(_ values: NSSet)

}
