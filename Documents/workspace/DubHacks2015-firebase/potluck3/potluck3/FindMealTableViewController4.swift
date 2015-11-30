//
//  FindMealTableViewController4.swift
//  potluck3
//
//  Created by Varun Viswanath on 11/29/15.
//  Copyright © 2015 Fei Yao Li. All rights reserved.
//

import Foundation

import UIKit

class FindMealTableViewController4: UITableViewController {
    
    var data = ["DistrictAss", "LocalDick", "OdeGarbage" , "HFShit"]
    
    // Mark - UIViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.tableView.editing = true
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FindMealTableViewCell", forIndexPath: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}