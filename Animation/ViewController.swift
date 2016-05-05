//
//  ViewController.swift
//  Animation
//
//  Created by Jared Allen on 1/11/16.
//  Copyright © 2016 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rangerImage: UIImageView!
    
    var counter = 1
    var timer = NSTimer()
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func doAnimation() {
        if counter == 22 {
            counter = 1
            
        } else {
            counter++
            
        }
        
        rangerImage.image = UIImage(named: "yellow-ranger-\(counter).png")
    }


    @IBAction func animateButton(sender: AnyObject) {
       
        if isAnimating == false {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true

        } else {
            timer.invalidate()
            isAnimating = false
            
        }
       
    }
    
     /*
    override func viewDidLayoutSubviews() {
        // rangerImage.center = CGPointMake(rangerImage.center.x - 400, rangerImage.center.y)
        // rangerImage.alpha = 0
        rangerImage.frame = CGRectMake(5, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            // self.rangerImage.center = CGPointMake(self.rangerImage.center.x + 400, self.rangerImage.center.y)
            // self.rangerImage.alpha = 1
            self.rangerImage.frame = CGRectMake(5, 20, 400, 200)
        })
    }
    */
}

