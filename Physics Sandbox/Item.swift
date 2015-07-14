//
//  Item.swift
//  Physics Sandbox
//
//  Created by travis on 7/13/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import Foundation
import UIKit

class  Item : UIView {
    
    var dynamicBehavior = UIDynamicItemBehavior()
    
    init(x: CGFloat, y: CGFloat, h: CGFloat, w: CGFloat)
    {
        super.init(frame: CGRectMake(x, y, h, w))
        
    }
    
    required init(coder aDecoder: NSCoder ){
        fatalError("init(coder:) has not been implemented")
    }
}