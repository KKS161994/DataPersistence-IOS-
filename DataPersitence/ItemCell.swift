//
//  ItemCell.swift
//  DataPersitence
//
//  Created by kartikey on 17/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    
    func configure(items: Items){
        itemTitle.text = items.title
        itemPrice.text = "\(items.price)"
        itemDescription.text = items.details
    }
    
}
