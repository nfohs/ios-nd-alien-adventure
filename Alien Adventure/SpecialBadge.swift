//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {

    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.texture = SKTexture.init(image: #imageLiteral(resourceName: "BadgeTeal"))
    }
   
    enum BadgeAnimation: Int {
        case growAndShrink = 0, rotate, shake
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}
