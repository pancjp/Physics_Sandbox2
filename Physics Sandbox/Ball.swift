//
//  Ball.swift
//  Physics Sandbox
//
//  Created by caganhawthorne on 7/10/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import UIKit

class Ball: Item {
    
    
    
    var elasticity = 1.0
    var density = 1
    var resistance = 1
    var friction = 0.01
    
    
    
    init(x: CGFloat, y: CGFloat)
    {
        
        super.init(x: x,y: y, h: 20, w: 20)
        self.backgroundColor = UIColor.purpleColor()
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        dynamicBehavior = UIDynamicItemBehavior(items: [self])
        
        
        dynamicBehavior.friction = CGFloat(friction)
        dynamicBehavior.resistance = CGFloat(resistance)
        dynamicBehavior.elasticity = CGFloat(elasticity)
        dynamicBehavior.density = CGFloat(density)
        dynamicBehavior.allowsRotation = true
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
