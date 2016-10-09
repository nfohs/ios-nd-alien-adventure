//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        var planetRating = [String:Int]()
        var mostIntriguingPlanet = String()
        //load JSON file into dictionary
        let planetJSON = Bundle.main.url(forResource: "PlanetData", withExtension: "json")!
        let rawPlanetJSON = try! Data(contentsOf: planetJSON)
        var planetDictionaryFromJSON: [[String:Any]]
        do {
            planetDictionaryFromJSON = try! JSONSerialization.jsonObject(with: rawPlanetJSON) as! [[String:Any]]
        }
        //evaluate each planet in the JSON file
        for planet in planetDictionaryFromJSON {
            var planetValue = Int()
            //load all the values to generate intrigue score,update the planet rating dictionary with results
            if let name = planet["Name"] as? String, let commonCount = planet["CommonItemsDetected"] as? Int, let uncommonCount = planet["UncommonItemsDetected"] as? Int, let rareCount = planet["RareItemsDetected"] as? Int, let legendaryCount = planet["LegendaryItemsDetected"] as? Int {
                    planetValue = commonCount + uncommonCount * 2 + rareCount * 3 + legendaryCount * 4
                    print("\(name) is valued at \(planetValue)")
                    planetRating.updateValue(planetValue, forKey: name)
                    print("\(planetRating)")
                }
            }
        //check values in planetRating dictionary, set mostIntriguingPlanet
        print("highest value should be \(planetRating.values.max())")
        for (key, value) in planetRating {
            if value == planetRating.values.max() {
                mostIntriguingPlanet = key
            }
            //had help from http://stackoverflow.com/questions/38512265/how-to-find-the-key-with-the-min-max-value-in-a-swift-dictionary
        }
        return mostIntriguingPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
