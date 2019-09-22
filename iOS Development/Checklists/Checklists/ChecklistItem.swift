//
//  ChecklistItem.swift
//  Checklists
//
//  Created by eseedo on 3/6/19.
//  Copyright © 20
//  19 icode. All rights reserved.
//
import Foundation
class ChecklistItem{
    
    var text = ""
    var checked = false
    func toggleChecked() {
        checked = !checked
    }
}
