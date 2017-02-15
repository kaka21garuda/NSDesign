//
//  SkillLoaderView.swift
//  NSDesign
//
//  Created by Buka Cakrawala on 2/14/17.
//  Copyright © 2017 Buka Cakrawala. All rights reserved.
//

import UIKit

@IBDesignable
class SkillLoderView: UIView {

    // MARK - Private Variables
    private var circleLayer: CAShapeLayer!
    private var timer: Timer!
    private var startTime = NSDate.timeIntervalSinceReferenceDate
    
    var clock: Bool!
    var radius: CGFloat!
    var lineWidth: CGFloat!
    
    var animationDurationTimeInterval: TimeInterval = 1

    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        self.wa
//    }
    
    // MARK: - IBInspectable
    @IBInspectable var circleColor: UIColor? = UIColor.blue {
        didSet {
            layer.backgroundColor = self.backgroundColor?.cgColor
        }
    }
    
    @IBInspectable var clockwise: Bool = true {
        didSet {
            clock = self.clockwise
        }
    }
    
    @IBInspectable var circleRadius: CGFloat = 0.0 {
        didSet {
            radius = self.circleRadius
        }
    }
    
    @IBInspectable var circleWidth: CGFloat = 0.0 {
        didSet {
            lineWidth = self.circleWidth
        }
    }
    
    
    @IBInspectable var animationDuration: Double = 0.5 {
        didSet {
            animationDurationTimeInterval = TimeInterval(animationDuration)
            
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func draw(_ rect: CGRect) {
        self.clock = self.clockwise
        self.layer.backgroundColor = self.circleColor?.cgColor
    }
    
    func setupCircle() {
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2), radius: radius, startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: clock)
        
        circleLayer = CAShapeLayer()
        circleLayer.lineWidth = lineWidth
        circleLayer.path = circlePath.cgPath
        
        circleLayer.strokeEnd = 0.0
        
        layer.addSublayer(circleLayer)
        
    }
    
    func animate() {
    
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.duration = animationDurationTimeInterval
    
    }
    
    
    
    
    
    
    
    
    
}
