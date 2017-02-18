//
//  Items+CoreDataClass.swift
//  DataPersitence
//
//  Created by kartikey on 16/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import CoreData


public class Items: NSManagedObject {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
}
