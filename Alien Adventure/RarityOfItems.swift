//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        //initialize the dictionary
        var itemRarityDict = [UDItemRarity:Int]()
        //set the base dictionary values to 0
        itemRarityDict = [.common:0, .uncommon:0, .rare:0, .legendary:0]
        //go over every item in inventory, increment the rarity count for each item in inventory
        for item in inventory {
            print("\(item.name) is a \(item.rarity) item")
            itemRarityDict[item.rarity]? += 1
            //disclosure - had help from http://stackoverflow.com/questions/33575585/increment-an-integer-in-a-swift-dictionary
        }
        print(itemRarityDict)
        return itemRarityDict
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
