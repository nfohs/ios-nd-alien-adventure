//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        //set up banned items array, load plist
        var bannedItemsList = [Int]()
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let dataFileArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        print("loaded \(dataFileURL)")
        //for loop to check items in the plist
        for item in dataFileArray {
            //load name, itemID, historicalData dictionary and the carbonAge as an int
            if let name = item["Name"] as? String, let itemID = item["ItemID"] as? Int, let historicalData = item["HistoricalData"] as? [String:Any], let carbonAge = historicalData["CarbonAge"] as? Int {
                print("\(name) is \(carbonAge) years old")
                //check for string in name - (i don't know that localizedLowercase is the best approach, but does match according to the exercise parameters) and check that age is less than 30
                if name.localizedLowercase.contains("laser") == true && carbonAge < 30 {
                    bannedItemsList.append(itemID)
                    print("\(name) should be banned")
                }
            }
        }
        return bannedItemsList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"

