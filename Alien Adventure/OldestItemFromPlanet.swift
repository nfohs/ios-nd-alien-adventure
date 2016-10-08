//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem: UDItem?
        var oldestItemAge: Int = 0
        //for loop to cycle through inventory
        if inventory.count != 0 {
            for item in inventory {
                //check for items from the proper planet
                if let originPlanet = item.historicalData["PlanetOfOrigin"], originPlanet as? String == planet {
                    //store age as a value from the historical data dictionary, compare to each item
                    if let ageOfItem = item.historicalData["CarbonAge"] as? Int {
                        if ageOfItem > oldestItemAge {
                            print("\(item.name) is \(ageOfItem) - that's older than \(oldestItem?.name)")
                            oldestItemAge = ageOfItem
                            oldestItem = item
                        }
                    }
                }
            }
            return oldestItem
        } else {
            print("your inventory is empty")
            return oldestItem
        }
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
