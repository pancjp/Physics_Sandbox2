//
//  PlayModeViewController.swift
//  Physics Sandbox
//
//  Created by caganhawthorne on 7/10/15.
//  Copyright © 2015 Cagan Hawthorne. All rights reserved.
//

import UIKit

class PlayModeViewController: UIViewController, UICollisionBehaviorDelegate {
    
    var dynamicAnimator = UIDynamicAnimator()
    var allObjects : [Item] = []
    var dynObjects : [UIDynamicItem] = []
    var collisionBehavior = UICollisionBehavior()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dynamicAnimator = UIDynamicAnimator(referenceView: view)

        for index in allObjects {
            dynObjects.append(index)
            view.addSubview(index)

        }
        collisionBehavior = UICollisionBehavior(items: allObjects)
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        collisionBehavior.collisionMode = .Everything
        collisionBehavior.collisionDelegate = self
        dynamicAnimator.addBehavior(collisionBehavior)
        for index in allObjects {
            collisionBehavior.addItem(index)
        }
        
        let pushBehavior = UIPushBehavior(items: allObjects, mode: UIPushBehaviorMode.Continuous)
        pushBehavior.pushDirection = CGVectorMake(0, 4.71238898038)
        pushBehavior.magnitude = 5
        dynamicAnimator.addBehavior(pushBehavior)
        
        
        print("\(allObjects.count)")
       
    }
    @IBAction func onStuffBeingDragged(sender: UIPanGestureRecognizer) {
        self.view.bringSubviewToFront(sender.view!)
        let translation = sender.translationInView(self.view!)
        sender.view!.center = CGPointMake(sender.view!.center.x + translation.x, sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: self.view!)
    }

}
