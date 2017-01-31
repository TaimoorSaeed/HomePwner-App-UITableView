//  ItemsViewController.swift
//  Homepwner Application (UITableView)
//
//  Created by Nano Degree on 31/01/2017.
//  Copyright © 2017 Swift Pakistan. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController{
 
    
    override func viewDidLoad() {
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left : 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    var itemStore : ItemStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        
        let item = itemStore.allItems[indexPath.row]
        
        cell?.textLabel?.text = item.name
        
        cell?.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell!
    }
}
