//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var mostUsedCharacter: Character? = nil
        var charCountDict = [Character:Int]()
        //check for empty inventory
        if inventory.count != 0 {
            //loop through inventory
            for item in inventory {
                //set names to lowercase
                let name = item.name.localizedLowercase
                //loop through the characters in the name, set dict value if nil, step dict value if exists
                for character in name.characters {
                    if charCountDict[character] == nil {
                        charCountDict[character] = 1
                    } else {
                        charCountDict[character]? += 1
                    }
                }
            }
            //loop through charCountDict and set mostUsedCharacter to the key with the highest value
            for (key, value) in charCountDict {
                if value == charCountDict.values.max() {
                    mostUsedCharacter = key
                }
            }
            return mostUsedCharacter
        } else {
            return mostUsedCharacter
        }
    }
}
