//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var planetItemsNeeded = [UDItem]()
        
        //Check to make sure inventory isn't empty
        if inventory.count != 0 {
            //Evaluate each item in inventory for all the items from a specific planet
            for item in inventory {
                if let originPlanet = item.historicalData["PlanetOfOrigin"], originPlanet as? String == planet {
                    print("Handing Over \(item.name) That's definitely from \(originPlanet)")
                    planetItemsNeeded.append(item)
                    print("we've handed over \(planetItemsNeeded.count)")
                } else {
                    print("\(item.name) is not from Glinda")
                }
            }
            return planetItemsNeeded
        }else {
            print("Your inventory is empty")
            return planetItemsNeeded
        }
    }
}
