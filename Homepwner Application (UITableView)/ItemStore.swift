//
//  ItemStore.swift
//  Homepwner Application (UITableView)
//
//  Created by Nano Degree on 31/01/2017.
//  Copyright © 2017 Swift Pakistan. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
    
    let newItem = Item (random: true)
    
    allItems.append(newItem)
    
    return newItem
    
    }
    
    init(){
        for _ in 0..<5{
            createItem()
        }
    }
    
}

