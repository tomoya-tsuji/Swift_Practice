//
//  ViewController.swift
//  SwiftUINavigationControllerClass
//
//  Created by TsujiTomoya on 2015/07/31.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let groupNames = ["ビートルズ","スーパーマリオ"]
    let groups = [
        ["ジョンレノン","リンゴスター","ジョージハリスン","ポールマッカートニー"],
        ["マリオ","ルイージ","ピーチ","クッパ","キノピオ"]
    ]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.groupNames.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groups[section].count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = self.groups[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var view = tableView.dequeueReusableHeaderFooterViewWithIdentifier("Header")
          as? UITableViewHeaderFooterView
        if view == nil{
            view = UITableViewHeaderFooterView(reuseIdentifier: "Header")
        }
        view!.textLabel.text = self.groupNames[section]
        return view!
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }

}

