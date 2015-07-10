//
//  Square.swift
//  Physics Sandbox
//
//  Created by Connor Pan on 7/10/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import UIKit

class Square: UIView {

    var squareBehaviors = UIDynamicItemBehavior()
    var square = UIView()
    
    init(x: CGFloat, y: CGFloat) {
        super.init(frame: CGRectMake(x, y, 75, 75))
        self.backgroundColor = UIColor.blueColor()
        squareBehaviors = UIDynamicItemBehavior(items: [self])
        squareBehaviors.allowsRotation = true
        squareBehaviors.elasticity = 1.0
        squareBehaviors.density = 100
        squareBehaviors.resistance = 10
        squareBehaviors.friction = 1
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
