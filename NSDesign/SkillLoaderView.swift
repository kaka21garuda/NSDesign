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
    private var circleLayer = CAShapeLayer()
    private var timer = Timer()
    private var startTime = NSDate.timeIntervalSinceReferenceDate
    
    var colorBackground = UIColor.black
    var clock = true
    var radius = 50.0
    var lineWidth = 20.0
    
    var animationDurationTimeInterval: TimeInterval = 1
    var completion: CGFloat = 1.0
    
    
    
    // MARK: - IBInspectable
    
    @IBInspectable var circleColor: UIColor = UIColor.red {
        didSet {
            // colorStroke = self.circleColor
            setNeedsLayout()
        }
    }
    
    @IBInspectable var fillColor: UIColor = UIColor.clear {
        didSet {
            colorBackground = self.fillColor
            setNeedsLayout()
        }
    }
    
    @IBInspectable var clockwise: Bool = true {
        didSet {
            clock = self.clockwise
            setNeedsLayout()
        }
    }
    
    @IBInspectable var circleRadius: CGFloat = 0.0 {
        didSet {
            radius = Double(self.circleRadius)
            setNeedsLayout()
        }
    }
    
    @IBInspectable var circleWidth: CGFloat = 0.0 {
        didSet {
            lineWidth = Double(self.circleWidth)
            setNeedsLayout()
        }
    }
    
    
    @IBInspectable var animationDuration: Double = 0.5 {
        didSet {
            animationDurationTimeInterval = TimeInterval(self.animationDuration)
            setNeedsLayout()
            
        }
    }
    
    @IBInspectable var completionCircle: CGFloat = 1.0 {
        didSet {
            completion = self.completionCircle
            setNeedsLayout()
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        print("Layout subviews")
        setupCircle()
        animate()
    }
    
    
    
//    override func draw(_ rect: CGRect) {
//        self.clock = self.clockwise
//        self.layer.backgroundColor = self.circleColor?.cgColor
//    }
    
    func setupCircle() {
        
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2), radius: CGFloat(radius), startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: clock)
        
        circleLayer.strokeColor = circleColor.cgColor
        
        circleLayer.lineWidth = CGFloat(lineWidth)
        circleLayer.path = circlePath.cgPath
        
        circleLayer.fillColor = colorBackground.cgColor
        
        
        circleLayer.strokeEnd = 1.0
        
        layer.addSublayer(circleLayer)
 
    }
    
    func animate() {
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.duration = animationDurationTimeInterval
        
        animation.fromValue = 0
        animation.toValue = completion
        
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        
        circleLayer.strokeEnd = completion
        
        circleLayer.add(animation, forKey: "animateCircle")
        
        // --
        
    }
    
    
    
    
    
    
    
    
    
}
