//
//  Ball.swift
//  Physics Sandbox
//
//  Created by caganhawthorne on 7/10/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import UIKit

class Ball: UIView {
    
    var ballDynamicBehavior = UIDynamicItemBehavior()
    
    
    init(x: CGFloat, y: CGFloat)
    {
        super.init(frame: CGRectMake(x, y, 20, 20))
        self.backgroundColor = UIColor.purpleColor()
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        ballDynamicBehavior = UIDynamicItemBehavior(items: [self])
        ballDynamicBehavior.friction = 0.1
        ballDynamicBehavior.resistance = 1
        ballDynamicBehavior.elasticity = 1.0
        ballDynamicBehavior.density = 1
        ballDynamicBehavior.allowsRotation = false
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
        
    }
    


}
