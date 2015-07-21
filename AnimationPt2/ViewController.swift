//
//  ViewController.swift
//  AnimationPt2
//
//  Created by Yakov on 7/21/15.
//  Copyright (c) 2015 yakov. All rights reserved.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animate()
        var timer = NSTimer.scheduledTimerWithTimeInterval(2.5, target: self, selector: "animate", userInfo: nil, repeats: true)
        
    }
    
    func animate() {
        let rect1 = UIView()
        let rect2 = UIView()
        let rect3 = UIView()
        let rect4 = UIView()
        let rect5 = UIView()
        var i = 0
        var complete = 0
        var delay: Double = 0

        let options = UIViewAnimationOptions.Autoreverse
        
        for rect in [rect1, rect2, rect3, rect4, rect5] {
            rect.backgroundColor = UIColor.blueColor()
            rect.frame = CGRect(x: 10 + i, y: 150, width: 8, height: 5)
            self.view.addSubview(rect)

        
            UIView.animateWithDuration(0.5, delay: delay, options: options, animations: {
                rect.backgroundColor = UIColor.purpleColor()
                rect.frame = CGRect(x: 10 + i, y: 140, width: 8, height: 15)
                }, completion: {finished in
                    rect.backgroundColor = UIColor.blueColor()
                    rect.frame = CGRect(x: 10 + complete, y: 150, width: 8, height: 5)
                    complete += 8
            })
            i += 8
            delay += 0.25
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

