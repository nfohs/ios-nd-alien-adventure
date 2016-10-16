//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//// Alien Adventure 3 checks:
//case basicCheck = "BasicCheck"
//case advancedCheck = "AdvancedCheck"
//case expertCheck = "ExpertCheck"
//case checkBadges = "CheckBadges"


extension Hero {
    
   
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeCheckResult: Bool = false
        var badgesObtained = [String]()
        //add badge names to an array
        for badge in badges {
            badgesObtained.append(badge.requestType.rawValue)
        }
        print("We have earned \(badgesObtained)")
        //cycle through all requestTypes the alien is looking for
        if requestTypes != [] {
            for request in requestTypes {
                print("checking for \(request.rawValue)")
                if badgesObtained.contains(request.rawValue) {
                    print("it's a match - we have \(request.rawValue)")
                    badgeCheckResult = true
                } else {
                    print("we don't have \(request.rawValue)")
                    badgeCheckResult = false
                }
            }
        } else {
            print("he's not checking for any badges")
            badgeCheckResult = true
        }
        return badgeCheckResult
    }
}
