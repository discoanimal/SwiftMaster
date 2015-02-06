//  DataSource.swift - SwiftMaster
//  Copyright (c) 2015 jlynch.co. All rights reserved

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    var originalDataSource : UITableViewDataSource
    
    init(originalDataSource:UITableViewDataSource) {
        self.originalDataSource = originalDataSource
        super.init()
    }
    
    override func forwardingTargetForSelector(aSelector: Selector) -> AnyObject? {
        if self.originalDataSource.respondsToSelector(aSelector) {
            return self.originalDataSource
        }
        return super.forwardingTargetForSelector(aSelector)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tv: UITableView, numberOfRowsInSection sec: Int) -> Int {
        // this is just to quiet the compiler
        return self.originalDataSource.tableView(tv, numberOfRowsInSection: sec)
    }
    
    func tableView(tv: UITableView, cellForRowAtIndexPath ip: NSIndexPath) -> UITableViewCell {
        let cell = self.originalDataSource.tableView(tv, cellForRowAtIndexPath: ip)
        cell.textLabel!.font = UIFont(name: "GillSans-Bold", size: 14)!
        return cell
    }
    
}
