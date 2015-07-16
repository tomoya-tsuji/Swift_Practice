//
//  ViewController.swift
//  SegueViewWithoutStoryboard
//
//  Created by TsujiTomoya on 2015/07/16.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRect(x: 0,y: 0, width: 50, height: 44)
        button.setTitle("開く", forState: UIControlState.Normal)
        button.addTarget(
            self,
            action: "respondToButtonClick",
            forControlEvents: UIControlEvents.TouchUpInside
        )
        view.addSubview(button);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UIButton
    func respondToButtonClick(sender: UIButton){
    
    }


}

