//
//  ViewController.swift
//  TableViewText
//
//  Created by TsujiTomoya on 2015/07/23.
//  Copyright (c) 2015年 astrotom. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let groupNames = ["ビートルズ","レッド・ツェッペリン"]
    let groups = [
        ["ジョンレノン","ポールマッカートニ","ジョージハリスン","リンゴスター"],
        ["ジミーペイジ","ロバートプラント","ジョンポールジョーンズ","ジョンボーナム"]
    ]
    
    
    //sectionの数を返す処理
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.groupNames.count
    }
    
    //sectionに表示するrowの数を返す処理
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groups[section].count
    }
    
    //セルの表示内容をセットする
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = self.groups[indexPath.section][indexPath.row]
        return cell
    }
    
}

