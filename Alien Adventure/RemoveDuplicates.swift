//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        var inventoryDict = [UDItem: Int]()
        var deDupedInventory = [UDItem]()
        for item in inventory {
            print(item.name)
            let filtered = inventory.filter{$0 == item}
            inventoryDict.updateValue(filtered.count, forKey: item)
            print(inventoryDict)
        }
        for (key, _) in inventoryDict {
            deDupedInventory.append(key)
            
        }
        return deDupedInventory
    }
}
