//
//  ViewController.swift
//  lab test 2
//
//  Created by Yogesh Chalodiya on 2016-02-17.
//  Copyright © 2016 Yogesh Chalodiya - C0664381. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var squre: UIView!
    
    var incrementsize:CGFloat = 15.0;
    var timer:NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("md"), userInfo: nil, repeats: true);
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 var boolval:Bool = false;
    
    func md() {
        let distY = squre.frame.origin.y + 15;
        
        if distY >= view.frame.size.height - 50 {
            timer.invalidate();
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("mr"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.y = distY;
        }
    }
    
    func mr() {
        let distX = squre.frame.origin.x + 15;
        if distX >= view.frame.size.width - 50 {
            timer.invalidate();
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("mu"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.x = distX;
        }
    }
    
    func mu() {
        let distY = squre.frame.origin.y - 15;
        if distY <= 0 {
            timer.invalidate();
          
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("ml"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.y = distY;
        }
    }
    
    func ml() {
        let distX = squre.frame.origin.x - 15;
        if distX <= 0 {
            timer.invalidate();
            boolval = true;
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("mr1"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.x = distX;
        }
    }
    func mr1() {
        let distX = squre.frame.origin.x + 15;
        if distX >= view.frame.size.width - 50 {
            timer.invalidate();
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("md1"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            
            
            squre.frame.origin.x = distX;
        }
    }
    func md1() {
        let distY = squre.frame.origin.y + 15;
        
        if distY >= view.frame.size.height - 50 {
            timer.invalidate();
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("ml1"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.y = distY;
        }
    }
    func ml1() {
        let distX = squre.frame.origin.x - 15;
        if distX <= 0 {
            timer.invalidate();
            boolval = true;
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("mu1"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.x = distX;
        }
    }
    func mu1() {
        let distY = squre.frame.origin.y - 15;
        if distY <= 0 {
            timer.invalidate();
     
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("md"), userInfo: nil, repeats: true);
            squre.backgroundColor = UIColor.randomColor();
        } else {
            squre.frame.origin.y = distY;
        }
    }
    
    
    
}

extension UIColor {
    class func randomColor() -> UIColor {
        let red = CGFloat(Double((arc4random() % 256))/255)
        let green = CGFloat(Double(arc4random() % 256)/255)
        let blue = CGFloat(Double(arc4random() % 256)/255)
        return UIColor(red: red, green: green, blue: blue, alpha:1.0)
    }
}