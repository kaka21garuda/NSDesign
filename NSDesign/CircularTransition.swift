//
//  CircularTransition.swift
//  NSDesign
//
//  Created by Buka Cakrawala on 2/7/17.
//  Copyright © 2017 Buka Cakrawala. All rights reserved.
//

import UIKit

enum TransitionMode: Int {
    case present, dismiss, pop
}

class CircularTransition: NSObject {
    
    public var circle = UIView()
    
    var startingPoint = CGPoint.zero {
        didSet {
            circle.center = startingPoint
        }
    }
    
    // Default color of transition
    var circleColor = UIColor.green
    
    // Initial amount of animation duration
    var duration = 0.6
    
    var transitionMode: TransitionMode = .present
}

extension CircularTransition: UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        
        // Transition Mode is Present
        if transitionMode == .present {
            
        } else {
            
        }
    }
    
    func frameForCircle(withViewCenter viewCenter: CGPoint, size viewSize: CGSize, startPoint: CGPoint) -> CGRect {
        
        
        
    }
    
}
