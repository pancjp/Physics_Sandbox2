//
//  Brick.swift
//  Physics Sandbox
//
//  Created by travis on 7/10/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import Foundation
import UIKit

class Brick : UIView {
    
    var brickDynamicBehavior = UIDynamicItemBehavior()
    
    
    init(x: CGFloat, y: CGFloat)
    {
        super.init(frame: CGRectMake(x, y, 20, 40))
        self.backgroundColor = UIColor.blueColor()
        //self.layer.cornerRadius = 10
        self.clipsToBounds = true
        brickDynamicBehavior = UIDynamicItemBehavior(items: [self])
        brickDynamicBehavior.friction = 0.1
        brickDynamicBehavior.resistance = 1
        brickDynamicBehavior.elasticity = 1.0
        brickDynamicBehavior.density = 5
        brickDynamicBehavior.allowsRotation = true
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}