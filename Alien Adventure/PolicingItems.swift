//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        var policingErrors = [UDPolicingError.nameContainsLaser:0, UDPolicingError.itemFromCunia:0, UDPolicingError.valueLessThan10:0]
        print("there are \(inventory.count) items in inventory")
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.nameContainsLaser {
                let error = UDPolicingError.nameContainsLaser
                print("\(item.name) has laser in the name")
                policingErrors[error] = policingErrors[error]! + 1
            } catch UDPolicingError.itemFromCunia {
                let error = UDPolicingError.itemFromCunia
                print("\(item.name) is from Cunia")
                policingErrors[error] = policingErrors[error]! + 1
            } catch UDPolicingError.valueLessThan10 {
                let error = UDPolicingError.valueLessThan10
                print("\(item.name) has value less than 10")
                policingErrors[error] = policingErrors[error]! + 1
            } catch {
                print("another error")
            }
        }
        print(policingErrors)
        return policingErrors
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
