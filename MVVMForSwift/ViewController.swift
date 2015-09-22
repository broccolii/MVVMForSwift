//
//  ViewController.swift
//  MVVMForSwift
//
//  Created by Broccoli on 15/9/22.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! SwitchWithTextTableViewCell
        let viewModel = MinionModeViewModel()
        cell.configure(withDelegate: viewModel, dataSource: viewModel)
        return cell
        
    }
}
