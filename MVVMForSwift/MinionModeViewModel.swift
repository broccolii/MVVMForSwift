//
//  MinionModeViewModel.swift
//  MVVMForSwift
//
//  Created by Broccoli on 15/9/22.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit



class MinionModeViewModel: SwitchWithTextCellDataSource {
    
    var title = "Minion Mode!!!"
    var switchOn = true
    var font = UIFont.systemFontOfSize(20)
    var color = UIColor.yellowColor()
    var switchColor = UIColor.redColor()
}

extension MinionModeViewModel: SwitchWithTextCellDelegate {
    func onSwitchTogleOn(on: Bool) {
        if on {
            print("The Minions are here to stay!")
        } else {
            print("The Minions went out to play!")
        }
    }
}
