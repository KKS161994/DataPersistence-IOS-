//
//  ItemTypes+CoreDataProperties.swift
//  DataPersitence
//
//  Created by kartikey on 16/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import CoreData


extension ItemTypes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemTypes> {
        return NSFetchRequest<ItemTypes>(entityName: "ItemTypes");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: NSSet?

}

// MARK: Generated accessors for toItem
extension ItemTypes {

    @objc(addToItemObject:)
    @NSManaged public func addToToItem(_ value: Items)

    @objc(removeToItemObject:)
    @NSManaged public func removeFromToItem(_ value: Items)

    @objc(addToItem:)
    @NSManaged public func addToToItem(_ values: NSSet)

    @objc(removeToItem:)
    @NSManaged public func removeFromToItem(_ values: NSSet)

}
