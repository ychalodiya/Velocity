//
//  squregame.swift
//  lab test 2
//
//  Created by Yogesh Chalodiya on 2016-02-17.
//  Copyright © 2016 Yogesh Chalodiya - C0664381. All rights reserved.
//

import UIKit

    
class squregame: UIView {

   
 var currentColor = UIColor.redColor()
        
        var timer: NSTimer!
        
        var start: Bool = true
        
        var p = CGPoint(x: 0, y: 0)
        
        override func drawRect(rect: CGRect) {
                
                let context = UIGraphicsGetCurrentContext()
                CGContextSetLineWidth(context, 2.0)
                CGContextSetStrokeColorWithColor(context, currentColor.CGColor)
                
                CGContextSetFillColorWithColor(context, currentColor.CGColor)
                
                let currentRect = CGRectMake(p.x, p.y, 25, 25)
                
                CGContextAddRect(context, currentRect)
                CGContextDrawPath(context, .FillStroke)
                
                if start {
                    startTimer()
                    start = false
                }
            }
        
        func startTimer() {
                // start the timer
                
                self.timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("drawsq"), userInfo: nil, repeats: true)
            }
        
        func drawsq() {
                
                
                    if p.x == 0 && p.y < 690 {
                        p.y += 15
                        
                    }
                    else if p.x < 345 && p.y == 690 {
                        p.x += 15
                        
                    }
                    else if p.x == 345 && p.y > 0 {
                        p.y -= 15
                        
                    }
                    else if p.x > 0 && p.y == 0 {
                        p.x -= 15
                        
                    }
                
                setNeedsDisplay()
            }
}
