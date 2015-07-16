//
//  ViewController.swift
//  CreateViewFromProgram
//
//  Created by TsujiTomoya on 2015/07/16.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rect = CGRect(x: 100, y: 100, width: 100,height: 50)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.redColor()
        //プログラムから制約を追加する
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(view)
        
        //width:100
        let width = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: rect.width
        )
        
        //height:50
        let height = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: rect.height
        )
        
        //CenterHorizontally
        let conterX = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0
        )
        
        //top30
        let y30 = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 30
        )
        
        //add constraints
        self.view.addConstraints([width , height , conterX , y30]);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

