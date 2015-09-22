//
//  SwitchWithTextTableViewCell.swift
//  MVVMForSwift
//
//  Created by Broccoli on 15/9/22.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

protocol SwitchWithTextCellDataSource {
    var title: String { get }
    var switchOn: Bool { get }
    var font: UIFont { get }
    var textColor: UIColor { get }
    var switchColor: UIColor { get }
}

protocol SwitchWithTextCellDelegate {
     func onSwitchTogleOn(on: Bool)
}

extension SwitchWithTextCellDataSource {
    var switchColor: UIColor {
        return UIColor.purpleColor()
    }
    
    var textColor: UIColor {
        return UIColor.blackColor()
    }
    
    var font: UIFont {
        return UIFont.systemFontOfSize(17)
    }
}

class SwitchWithTextTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switchToggle: UISwitch!
    
//    typealias onSwitchToggleHandleType = (switchOn: Bool) -> Void
//    private var onSwitchToggleHandler: onSwitchToggleHandleType?
    
    private var dataSource: SwitchWithTextCellDataSource?
    private var delegate: SwitchWithTextCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configure(withDelegate delegate: SwitchWithTextCellDelegate, dataSource: SwitchWithTextCellDataSource) {
        self.delegate = delegate
        self.dataSource = dataSource
        
        label.text = dataSource.title
        label.font = dataSource.font
        label.textColor = dataSource.textColor
        
        switchToggle.on = dataSource.switchOn
        switchToggle.onTintColor = dataSource.switchColor
    }
    
    @IBAction func onSwitchToggle(sender: UISwitch) {
        delegate?.onSwitchTogleOn(sender.on)
    }
    
}


