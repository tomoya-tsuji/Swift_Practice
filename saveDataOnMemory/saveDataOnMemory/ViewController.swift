//
//  ViewController.swift
//  saveDataOnMemory
//
//  Created by TsujiTomoya on 2015/08/01.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRect(x: 0,y: 0,width: 50, height: 44)
        button.setTitle("開く", forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

