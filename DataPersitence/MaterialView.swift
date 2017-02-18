//
//  MaterialView.swift
//  DataPersitence
//
//  Created by kartikey on 14/02/17.
//  Copyright © 2017 Teamie. All rights reserved.
//

import Foundation
import UIKit
private var materialKey = false

extension UIView {
    private var materialDesign : Bool {
        get{
        return materialKey
        }
        set{
            if materialKey{
            self.layer.masksToBounds = false
            self.layer.cornerRadius = 3.0
            self.layer.shadowRadius = 3.0
            self.layer.shadowOpacity = 0.8
            self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
                self.layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 0.8).cgColor
                
            }
            else{
            self.layer.shadowOpacity = 0.0
            self.layer.shadowColor = nil
            self.layer.shadowRadius = 0.0
            self.layer.cornerRadius = 0.0
            }
        }
    }
}
